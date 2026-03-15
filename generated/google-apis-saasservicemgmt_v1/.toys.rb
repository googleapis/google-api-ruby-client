expand :clean, paths: :gitignore

expand :rspec do |t|
  t.libs = ["lib", "spec"]
  t.use_bundler
end

expand :yardoc do |t|
  t.generate_output_flag = true
  t.use_bundler
end

expand :gem_build

tool "bundle" do
  flag :update

  include :exec, e: true

  def run
    exec ["bundle", update ? "update" : "install"]
  end
end

tool "ci" do
  include :terminal
  include :exec

  def run
    Dir.chdir context_directory
    @gem_name = File.basename context_directory
    @failures = []
    step "bundle"
    step "spec"
    step "yardoc"
    step "build"
    if @failures.empty?
      puts "CI SUCEEDED", :green, :bold
    else
      puts "CI FAILED", :red, :bold
      @failures.each { |name| puts "  failed: #{name}", :red, :bold }
      exit 1
    end
  end

  def step tool
    full_name = "#{@gem_name}:#{tool}"
    puts "Starting: #{full_name}...", :cyan, :bold
    result = exec_separate_tool [tool]
    if result.success?
      puts "SUCCESS: #{full_name}", :green, :bold
    else
      @failures << full_name
      puts "FAILED: #{full_name}", :red, :bold
    end
  end
end
