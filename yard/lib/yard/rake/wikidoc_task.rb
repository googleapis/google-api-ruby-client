require 'rake'
require 'rake/tasklib'
require 'yard/rake/yardoc_task'
require 'yard/cli/wiki'

module YARD
  module Rake
    # The rake task to run {CLI::Yardoc} and generate documentation.
    class WikidocTask < YardocTask
      protected

      # Defines the rake task
      # @return [void]
      def define
        desc "Generate Wiki Documentation with YARD"
        task(name) do
          before.call if before.is_a?(Proc)
          yardoc = YARD::CLI::Wiki.new
          yardoc.parse_arguments *(options + files)
          yardoc.options[:verifier] = verifier if verifier
          yardoc.run
          after.call if after.is_a?(Proc)
        end
      end
    end
  end
end
