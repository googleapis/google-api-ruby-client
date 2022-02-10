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

module Yoshi
  class PrGenerator
    DEFAULT_AUTO_APPROVE = "Auto-approved by the Toys pull request generator"

    def initialize yoshi_utils:
      @yoshi_utils = yoshi_utils
      @yoshi_utils.gh_verify_binary
      @yoshi_utils.git_verify_binary
      @context = @yoshi_utils.context
      @capturing = false
    end

    def capture enabled: true,
                remote: nil,
                branch_name: nil,
                commit_message: nil,
                pr_body: nil,
                labels: nil,
                auto_approve: false,
                approval_token: nil,
                &block
      unless enabled
        @context.logger.info "No remote given; pull request generation disabled"
        block.call
        return :disabled
      end
      raise "Attempted to re-enter PrGenerator#capture" if @capturing

      branch_name ||= generate_default_branch_name
      saved_branch_name = start_capture branch_name

      @capturing = true
      block.call
      @capturing = false
  
      if @yoshi_utils.git_clean?
        pr_number = :unchanged
      else
        pr_number = create_pr branch_name, remote, commit_message, pr_body
        update_pr pr_number, labels, auto_approve, approval_token
      end
      finish_capture pr_number, branch_name, saved_branch_name
    end

    private

    def start_capture branch_name
      @context.logger.info "Capturing changes for pull request"
      raise Error, "Git checkout is not clean" unless @yoshi_utils.git_clean?
      saved_branch_name = @yoshi_utils.git_current_branch
      @context.exec ["git", "switch", "-c", branch_name]
      saved_branch_name
    end

    def create_pr branch_name, remote, commit_message, pr_body
      commit_message ||= generate_default_commit_message
      pr_body ||= generate_default_pr_body
      @context.exec ["git", "add", "."], e: true
      @context.exec ["git", "commit", "-m", commit_message]
      @yoshi_utils.gh_without_standard_git_auth do
        @context.exec ["git", "push", "-u", remote, branch_name]
      end
      repo_name = @yoshi_utils.gh_repo_full_name
      cmd = ["gh", "pr", "create", "--repo", repo_name, "--title", commit_message, "--body", pr_body]
      output = @context.capture cmd, e: true
      puts output
      pr_number = output.split("\n").last.split("/").last
      # It sometimes takes a while for the new PR to propagate to GitHub's APIs
      @yoshi_utils.retry ["gh", "pr", "view", pr_number, "--repo", repo_name, "--json=number"]
      pr_number
    end

    def update_pr pr_number, labels, auto_approve, approval_token
      labels = Array(labels)
      auto_approve = DEFAULT_AUTO_APPROVE if auto_approve == true
      return if labels.empty? && !auto_approve
      approval_token ||= @yoshi_utils.gh_cur_token
      @yoshi_utils.gh_with_token approval_token do
        repo_name = @yoshi_utils.gh_repo_full_name
        unless labels.empty?
          cmd = ["gh", "issue", "edit", pr_number, "--repo", repo_name, "--add-label", labels.join(",")]
          @context.exec cmd, e: true
        end
        if auto_approve
          cmd = ["gh", "pr", "review", pr_number, "--repo", repo_name, "--approve", "--body", auto_approve]
          @context.exec cmd, e: true
        end
      end
    end

    def finish_capture pr_number, branch_name, saved_branch_name
      @context.exec ["git", "switch", saved_branch_name], e: true
      @context.exec ["git", "branch", "-D", branch_name], e: true
      if pr_number == :unchanged
        @context.logger.info "No files changed; no pull request created"
        pr_number
      else
        @context.exec ["git", "clean", "-df"], e: true
        @context.logger.info "Finished capture and opened pull request #{pr_number}"
        pr_number.to_i
      end
    end

    def generate_default_branch_name
      now = ::Time.now.utc.strftime "%Y%m%d-%H%M%S"
      ran = rand 10000
      "autopr/#{now}-#{ran}"
    end

    def generate_default_commit_message
      "[CHANGE ME] Automated pull request"
    end

    def generate_default_pr_body
      "Auto-created at #{::Time.now} using the toys pull request generator."
    end
  end
end
