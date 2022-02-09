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

module PullRequestGenerator
  def ensure_pull_request_generation_dependencies
    PullRequestGenerator.ensure_dependencies context: self
  end

  def ensure_pull_request_generation_fork git_remote: nil
    PullRequestGenerator.ensure_fork context: self, git_remote: git_remote
  end

  def generate_pull_request git_remote:,
                            branch_name: nil,
                            commit_message: nil,
                            pr_body: nil,
                            labels: nil,
                            approve: false,
                            &block
    PullRequestGenerator.generate context: self,
                                  git_remote: git_remote,
                                  branch_name: branch_name,
                                  commit_message: commit_message,
                                  pr_body: pr_body,
                                  labels: labels,
                                  approve: approve,
                                  &block
  end

  @dependencies_checked = false

  class << self
    def generate context:,
                 git_remote:,
                 branch_name: nil,
                 commit_message: nil,
                 pr_body: nil,
                 labels: nil,
                 approve: false
      if git_remote
        ensure_dependencies context: context
        approval_token = ENV["APPROVAL_GITHUB_TOKEN"] || environment_github_token(context: context)
        approve = "Auto-approved using the Toys pull request generator" if approve == true
        if (labels || approve) && !approval_token
          raise "Approval token required for labels or approval"
        end
        impl = Impl.new context: context,
                        git_remote: git_remote,
                        branch_name: branch_name,
                        commit_message: commit_message,
                        pr_body: pr_body,
                        labels: labels,
                        approval_message: approve,
                        approval_token: approval_token
        impl.start
        yield
        impl.finish ? :opened : :unchanged
      else
        context.logger.info "No git remote given; pull request generation disabled"
        yield
        :disabled
      end
    end

    def ensure_dependencies context:
      return if @dependencies_checked
      context.logger.info "Checking for PullRequestGenerator dependencies"
      ensure_gh_binary context: context
      ensure_git_binary context: context
      ensure_git_identity context: context
      @dependencies_checked = true
    end

    def ensure_fork context:, git_remote:
      ensure_dependencies context: context
      git_remote ||= "pull-request-fork"
      fork_name = environment_fork_name context: context
      context.exec ["gh", "repo", "fork", "--remote=false"]
      context.exec ["gh", "repo", "sync", fork_name]
      github_token = ENV["GITHUB_TOKEN"] || environment_github_token(context: context)
      has_remote = context.exec(["git", "remote", "get-url", git_remote],
                                e: false, out: :capture, err: :capture).success?
      if !has_remote && github_token
        username = fork_name.split("/").first
        context.exec ["git", "config", "--local", "--unset-all", "http.https://github.com/.extraheader"]
        cmd = ["git", "remote", "add", git_remote, "https://#{username}:#{github_token}@github.com/#{fork_name}.git"]
        log = ["git", "remote", "add", git_remote, "https://github.com/#{fork_name}.git"]
        context.exec cmd, log_cmd: "exec: #{log.inspect}"
      end
      git_remote
    end

    def ensure_gh_binary context:
      result = context.exec ["gh", "--version"], out: :capture, e: false
      match = /^gh version (\d+)\.(\d+)\.(\d+)/.match result.captured_out.to_s
      if !result.success? || !match
        context.logger.error "gh not installed."
        context.logger.error "See https://cli.github.com/manual/installation for installation instructions."
        context.exit 1
      end
      version_val = match[1].to_i * 1_000_000 + match[2].to_i * 1000 + match[3].to_i
      version_str = "#{match[1]}.#{match[2]}.#{match[3]}"
      if version_val < 1_000_000
        context.logger.error "gh version 1.0 or later required but #{version_str} found."
        context.logger.error "See https://cli.github.com/manual/installation for installation instructions."
        context.exit 1
      end
      context.logger.info "gh version #{version_str} found"
    end

    def ensure_git_binary context:
      result = context.exec ["git", "--version"], out: :capture, e: false
      match = /^git version (\d+)\.(\d+)\.(\d+)/.match result.captured_out.to_s
      if !result.success? || !match
        context.logger.error "git not installed."
        context.logger.error "See https://git-scm.com/downloads for installation instructions."
        context.exit 1
      end
      version_val = match[1].to_i * 1_000_000 + match[2].to_i * 1000 + match[3].to_i
      version_str = "#{match[1]}.#{match[2]}.#{match[3]}"
      if version_val < 2_022_000
        context.logger.error "git version 2.22 or later required but #{version_str} found."
        context.logger.error "See https://git-scm.com/downloads for installation instructions."
        context.exit 1
      end
      context.logger.info "git version #{version_str} found"
    end

    def ensure_git_identity context:
      return if context.exec(["git", "config", "--get", "user.name"], e: false).success? &&
                context.exec(["git", "config", "--get", "user.email"], e: false).success?
      context.exec ["git", "config", "--global", "user.email", "yoshi-automation@google.com"]
      context.exec ["git", "config", "--global", "user.name", "Yoshi Automation Bot"]
    end

    def environment_fork_name context:
      @fork_name ||= begin
        repo = JSON.parse(context.capture(["gh", "repo", "view", "--json=name"]))["name"]
        owner = JSON.parse(context.capture(["gh", "api", "/user"]))["login"]
        "#{owner}/#{repo}"
      end
    end

    def environment_github_token context:
      unless defined? @github_token
        @github_token = begin
          result = context.exec ["gh", "auth", "status", "-t"], e: false, out: :capture, err: [:child, :out]
          Regexp.last_match[1] if result.success? && result.captured_out =~ /Token: (\w+)/
        end
      end
      @github_token
    end
  end

  class Impl
    def initialize git_remote:,
                   context:,
                   branch_name: nil,
                   commit_message: nil,
                   pr_body: nil,
                   labels: nil,
                   approval_message: nil,
                   approval_token: nil
      @git_remote = git_remote
      @context = context
      @branch_name = branch_name || generate_default_branch_name
      @commit_message = commit_message || generate_default_commit_message
      @pr_body = pr_body || generate_default_pr_body
      @labels = Array(labels)
      @approval_message = approval_message
      @approval_token = approval_token
    end

    def start
      output = @context.capture(["git", "status", "-s"]).strip
      unless output.empty?
        @context.logger.error "Git checkout is not clean"
        @context.exit 1
      end
      @orig_branch_name = @context.capture(["git", "branch", "--show-current"]).strip
      @context.exec ["git", "switch", "-c", @branch_name]
      @context.logger.info ""
    end

    def finish
      output = @context.capture(["git", "status", "-s"]).strip
      result = !output.empty?
      if result
        @context.exec ["git", "add", "."]
        @context.exec ["git", "commit", "-m", @commit_message]
        @context.exec ["git", "push", "-u", @git_remote, @branch_name]
        output = @context.capture ["gh", "pr", "create", "--title", @commit_message, "--body", @pr_body]
        puts output
        pr_number = output.split("\n").last.split("/").last
        @context.logger.info "Created pull request"
        if @approval_token
          old_token = ENV["GITHUB_TOKEN"]
          ENV["GITHUB_TOKEN"] = @approval_token
          begin
            if @approval_message
              @context.exec ["gh", "pr", "review", pr_number, "--approve", "--body", @approval_message]
            end
            unless @labels.empty?
              @context.exec ["gh", "issue", "edit", pr_number, "--add-label", @labels.join(",")]
            end
          ensure
            ENV["GITHUB_TOKEN"] = old_token
          end
        end
        @context.exec ["git", "switch", @orig_branch_name]
      else
        @context.logger.info "No files changed; no pull request created"
        @context.exec ["git", "switch", @orig_branch_name]
        @context.exec ["git", "branch", "-D", @branch_name]
      end
      @context.exec ["git", "clean", "-df"]
      result
    end

    private

    def generate_default_branch_name
      now = Time.now.utc.strftime "%Y%m%d-%H%M%S"
      ran = rand 10000
      "autopr/#{now}-#{ran}"
    end

    def generate_default_commit_message
      "[CHANGE ME] Automated change"
    end

    def generate_default_pr_body
      "Auto-created at #{Time.now} using the toys pull request generator."
    end
  end
end
