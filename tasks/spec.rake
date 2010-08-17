require 'spec/rake/verify_rcov'

namespace :spec do
  Spec::Rake::SpecTask.new(:rcov) do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ['--require', 'rubygems', '--color', '--format', 'specdoc']
    if RCOV_ENABLED
      if `which rcov`.strip == ""
        STDERR.puts "Please install rcov:"
        STDERR.puts "sudo gem install relevance-rcov"
        exit(1)
      end
      t.rcov = true
    else
      t.rcov = false
    end
    t.rcov_opts = [
      '--exclude', 'spec',
      '--exclude', '1\\.8\\/gems',
      '--exclude', '1\\.9\\/gems'
    ]
  end

  Spec::Rake::SpecTask.new(:all) do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ['--require', 'rubygems', '--color', '--format', 'specdoc']
    t.rcov = false
  end

  Spec::Rake::SpecTask.new(:fast) do |t|
    t.spec_files = FileList['spec/**/*_spec.rb'].exclude(
      'spec/**/*_slow_spec.rb'
    )
    t.spec_opts = ['--require', 'rubygems', '--color', '--format', 'specdoc']
    t.rcov = false
  end

  if RCOV_ENABLED
    RCov::VerifyTask.new(:verify) do |t|
      t.threshold = 100.0
      t.index_html = 'coverage/index.html'
    end

    task :verify => :rcov
  end

  desc 'Generate HTML Specdocs for all specs'
  Spec::Rake::SpecTask.new(:specdoc) do |t|
    specdoc_path = File.expand_path(
      File.join(File.dirname(__FILE__), '../specdoc/'))
    Dir.mkdir(specdoc_path) if !File.exist?(specdoc_path)

    output_file = File.join(specdoc_path, 'index.html')
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ['--format', "\"html:#{output_file}\"", '--diff']
    t.fail_on_error = false
  end

  namespace :rcov do
    desc 'Browse the code coverage report.'
    task :browse => 'spec:rcov' do
      require 'launchy'
      Launchy::Browser.run('coverage/index.html')
    end
  end
end

if RCOV_ENABLED
  desc 'Alias to spec:verify'
  task 'spec' => 'spec:verify'
else
  desc 'Alias to spec:all'
  task 'spec' => 'spec:all'
end

task 'clobber' => ['spec:clobber_rcov']
