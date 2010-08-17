spec_dir = File.expand_path("..", __FILE__)
lib_dir = File.expand_path("../lib", spec_dir)

$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!
