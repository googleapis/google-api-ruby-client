require 'rake/gempackagetask'

namespace :gem do
  GEM_SPEC = Gem::Specification.new do |s|
    unless s.respond_to?(:add_development_dependency)
      puts 'The gem spec requires a newer version of RubyGems.'
      exit(1)
    end

    s.name = PKG_NAME
    s.version = PKG_VERSION
    s.summary = PKG_SUMMARY
    s.description = PKG_DESCRIPTION

    s.files = PKG_FILES.to_a
    s.executables << 'google-api'

    s.has_rdoc = true
    s.extra_rdoc_files = %w( README )
    s.rdoc_options.concat ['--main',  'README']

    # Dependencies used in the main library
    s.add_runtime_dependency('signet', '>= 0.1.4')
    s.add_runtime_dependency('addressable', '>= 2.2.2')
    s.add_runtime_dependency('httpadapter', '>= 0.2.0')
    s.add_runtime_dependency('json', '>= 1.1.9')
    s.add_runtime_dependency('extlib', '>= 0.9.15')

    # Dependencies used in the CLI
    s.add_runtime_dependency('launchy', '>= 0.3.2')
    s.add_runtime_dependency('rack', '= 1.2.0')
    s.add_runtime_dependency('sinatra', '>= 1.0')

    # Dependencies used in the examples
    s.add_runtime_dependency('liquid', '>= 2.2.2')

    s.add_development_dependency('rake', '>= 0.7.3')
    s.add_development_dependency('rspec', '~> 1.2.9')
    s.add_development_dependency('rcov', '>= 0.9.9')
    s.add_development_dependency('diff-lcs', '>= 1.1.2')

    s.require_path = 'lib'

    s.homepage = PKG_HOMEPAGE
  end

  Rake::GemPackageTask.new(GEM_SPEC) do |p|
    p.gem_spec = GEM_SPEC
    p.need_tar = true
    p.need_zip = true
  end

  desc 'Show information about the gem'
  task :debug do
    puts GEM_SPEC.to_ruby
  end

  desc 'Install the gem'
  task :install => ['clobber', 'gem:package'] do
    sh "#{SUDO} gem install --local pkg/#{GEM_SPEC.full_name}"
  end

  desc 'Uninstall the gem'
  task :uninstall do
    installed_list = Gem.source_index.find_name(PKG_NAME)
    if installed_list &&
        (installed_list.collect { |s| s.version.to_s}.include?(PKG_VERSION))
      sh(
        "#{SUDO} gem uninstall --version '#{PKG_VERSION}' " +
        "--ignore-dependencies --executables #{PKG_NAME}"
      )
    end
  end

  desc 'Reinstall the gem'
  task :reinstall => [:uninstall, :install]
end

desc 'Alias to gem:package'
task 'gem' => 'gem:package'

task 'clobber' => ['gem:clobber_package']
