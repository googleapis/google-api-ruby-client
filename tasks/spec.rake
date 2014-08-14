require 'rake/clean'
require 'rspec/core/rake_task'

CLOBBER.include('coverage', 'specdoc')

namespace :spec do
  RSpec::Core::RakeTask.new(:all) do |t|
    t.pattern = FileList['spec/**/*_spec.rb']
    t.rspec_opts = ['--color', '--format', 'documentation']
  end

  desc 'Generate HTML Specdocs for all specs.'
  RSpec::Core::RakeTask.new(:specdoc) do |t|
    specdoc_path = File.expand_path('../../specdoc', __FILE__)

    t.rspec_opts = %W( --format html --out #{File.join(specdoc_path, 'index.html')} )
    t.fail_on_error = false
  end
end

desc 'Alias to spec:all'
task 'spec' => 'spec:all'
