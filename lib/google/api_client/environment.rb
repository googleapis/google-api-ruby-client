module Google
  class APIClient
    module ENV
      OS_VERSION = if RUBY_PLATFORM =~ /mswin|win32|mingw|bccwin|cygwin/
        # TODO(bobaman)
        # Confirm that all of these Windows environments actually have access
        # to the `ver` command.
        `ver`.sub(/\s*\[Version\s*/, '/').sub(']', '')
      elsif RUBY_PLATFORM =~ /darwin/i
        "Mac OS X/#{`sw_vers -productVersion`}"
      else
        `uname -sr`.sub(' ', '/')
      end
    end
  end
end
