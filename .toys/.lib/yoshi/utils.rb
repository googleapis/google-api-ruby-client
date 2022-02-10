# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "json"

module Yoshi
  class Error < ::StandardError
  end

  class Utils
    def initialize context:
      @context = context
      @gh_username = :undefined
      @gh_cur_token = :undefined
      @git_identity_verified = {}
      @gh_repo_info = {}
    end

    attr_reader :context

    def git_verify_binary version: nil
      version ||= "2.22.0"
      version = ::Gem::Version.new version
      unless defined? @git_version
        result = @context.exec ["git", "--version"], out: :capture, e: false
        match = /^git version (\d+\.\d+\.\d+)/.match result.captured_out.to_s
        if !result.success? || !match
          raise Error, "git not installed. See https://git-scm.com/downloads for installation instructions."
        end
        @git_version = ::Gem::Version.new match[1]
        @context.logger.info "Found git version #{@git_version}"
      end
      if @git_version < version
        raise Error, "git version #{version} or later required but #{@git_version} found." \
                     " See https://git-scm.com/downloads for installation instructions."
      end
    end

    def git_ensure_identity
      git_verify_binary
      dir = ::Dir.getwd
      return if @git_identity_verified[dir]
      @git_identity_verified[dir] = true
      return if @context.exec(["git", "config", "--get", "user.name"], e: false).success? &&
                @context.exec(["git", "config", "--get", "user.email"], e: false).success?
      @context.exec ["git", "config", "--local", "user.email", "yoshi-automation@google.com"], e: true
      @context.exec ["git", "config", "--local", "user.name", "Yoshi Automation Bot"], e: true
    end

    def git_clean?
      git_verify_binary
      @context.capture(["git", "status", "-s"], e: true).strip.empty?
    end

    def git_current_branch
      git_verify_binary
      @context.capture(["git", "branch", "--show-current"], e: true).strip
    end

    def gh_verify_binary version: nil
      version ||= "2.0.0"
      version = ::Gem::Version.new version
      unless defined? @gh_version
        result = @context.exec ["gh", "--version"], out: :capture, e: false
        match = /^gh version (\d+\.\d+\.\d+)/.match result.captured_out.to_s
        if !result.success? || !match
          raise Error, "gh not installed." \
                       " See https://cli.github.com/manual/installation for installation instructions."
        end
        @gh_version = ::Gem::Version.new match[1]
        @context.logger.info "Found gh version #{@gh_version}"
      end
      if @gh_version < version
        raise Error, "gh version #{version} or later required but #{@gh_version} found." \
                     " See https://cli.github.com/manual/installation for installation instructions."
      end
    end

    def gh_username
      if @gh_username == :undefined
        gh_verify_binary
        @gh_username = ::JSON.parse(context.capture(["gh", "api", "/user"], e: true))["login"]
      end
      @gh_username
    end

    def gh_cur_token
      if @gh_cur_token == :undefined
        @gh_cur_token = ENV["GITHUB_TOKEN"] || begin
          gh_verify_binary
          result = @context.exec ["gh", "auth", "status", "-t"], e: false, out: :capture, err: [:child, :out]
          Regexp.last_match[1] if result.success? && result.captured_out =~ /Token: (\w+)/
        end
        @context.logger.info "gh_cur_token has length #{@gh_cur_token.to_s.size}"
      end
      @gh_cur_token
    end

    def gh_repo_info
      @gh_repo_info[::Dir.getwd] ||= begin
        gh_verify_binary
        ::JSON.parse @context.capture(["gh", "repo", "view", "--json=name,owner,url,parent"], e: true)
      end
    end

    def gh_repo_name
      gh_repo_info["name"]
    end

    def gh_repo_owner
      (gh_repo_info["parent"] || gh_repo_info)["owner"]["login"]
    end

    def gh_repo_full_name
      "#{gh_repo_owner}/#{gh_repo_name}"
    end

    def gh_repo_url
      "https://github.com/#{gh_repo_full_name}.git"
    end

    def gh_fork_full_name
      "#{gh_username}/#{gh_repo_name}"
    end

    def gh_fork_url
      "https://github.com/#{gh_fork_full_name}.git"
    end

    def gh_ensure_fork remote: nil
      git_verify_binary
      gh_verify_binary
      @context.exec ["gh", "repo", "fork", gh_repo_full_name, "--remote=false", "--clone=false"], e: true
      @context.exec ["gh", "repo", "sync", gh_fork_full_name], e: true
      if remote && gh_cur_token
        unless context.exec(["git", "remote", "get-url", remote], e: false, out: :null, err: :null).success?
          cmd = ["git", "remote", "add", remote,
                 "https://#{gh_username}:#{gh_cur_token}@github.com/#{gh_fork_full_name}.git"]
          log = ["git", "remote", "add", remote, "https://github.com/#{gh_fork_full_name}.git"]
          @context.exec cmd, log_cmd: "exec: #{log.inspect}", e: true
        end
      end
    end

    def gh_without_standard_git_auth
      existing_auth = @context.capture(["git", "config", "--local", "--get-all",
                                        "http.https://github.com/.extraheader", "^AUTHORIZATION:"],
                                       e: false).split("\n")
      unless existing_auth.empty?
        @context.exec ["git", "config", "--local", "--unset-all",
                       "http.https://github.com/.extraheader", "^AUTHORIZATION:"], e: true
      end
      begin
        yield
      ensure
        existing_auth.each do |auth|
          @context.exec ["git", "config", "--local", "--add", "http.https://github.com/.extraheader", auth], e: true
        end
      end
    end

    def gh_with_token token
      old_cur_token = gh_cur_token
      return yield if token == old_cur_token
      old_env_token = ::ENV["GITHUB_TOKEN"]
      old_username = @gh_username
      begin
        ::ENV["GITHUB_TOKEN"] = token
        @gh_cur_token = token
        @gh_username = :undefined
        yield
      ensure
        ::ENV["GITHUB_TOKEN"] = old_env_token
        @gh_cur_token = old_cur_token
        @gh_username = old_username
      end
    end

    def retry cmd, times: 3, delay: 1, max_delay: 5, backoff: 1.5, **opts
      result = nil
      times.times do
        result = @context.exec cmd, **opts, e: false
        break if result.success?
        sleep delay
        delay *= backoff
        delay = max_delay if delay > max_delay
      end
      result
    end
  end
end
