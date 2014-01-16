require 'rake/clean'
require 'rspec/core/rake_task'

CLOBBER.include('coverage', 'specdoc')

namespace :spec do
  RSpec::Core::RakeTask.new(:all) do |t|
    t.pattern = FileList['spec/**/*_spec.rb']
    t.rspec_opts = ['--color', '--format', 'documentation']
    t.rcov = false
  end

  desc 'Generate HTML Specdocs for all specs.'
  RSpec::Core::RakeTask.new(:specdoc) do |t|
    specdoc_path = File.expand_path('../../specdoc', __FILE__)

    t.rspec_opts = %W( --format html --out #{File.join(specdoc_path, 'index.html')} )
    t.fail_on_error = false
  end

  RSpec::Core::RakeTask.new(:rcov) do |t|
    if RCOV_ENABLED
      if `which rcov`.strip == ""
        STDERR.puts(
            "Please install rcov and ensure that its binary is in the PATH:"
        )
        STDERR.puts("sudo gem install rcov")
        exit(1)
      end
      t.rcov = true
    else
      t.rcov = false
    end
    t.rcov_opts = %w(
         --exclude gems/
         --exclude spec/
         --exclude lib/google/api_client/environment.rb
         --exclude lib/compat
    )
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
  desc 'Alias to spec:rcov'
  task 'spec' => 'spec:rcov'
else
  desc 'Alias to spec:all'
  task 'spec' => 'spec:all'
end
