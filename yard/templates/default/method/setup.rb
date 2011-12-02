lib_dir = File.expand_path(File.join(File.dirname(__FILE__), '../../../lib'))
$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!
require 'yard-google-code'

def init
  sections :header, [T('method_details')]
end