module Google
  class APIClient
    module ENV
      OS_VERSION = if RUBY_PLATFORM =~ /win32/
        `ver`.sub(/\s*\[Version\s*/, '/').sub(']', '')
      elsif RUBY_PLATFORM =~ /darwin/i
        "Mac OS X/#{`sw_vers -productVersion`}"
      else
        `uname -sr`.sub(' ', '/')
      end
    end
  end
end
