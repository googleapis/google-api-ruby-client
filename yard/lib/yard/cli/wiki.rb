require 'yard'
require 'yard/serializers/wiki_serializer'
require 'yard/cli/yardoc'

module YARD
  module CLI
    class Wiki < Yardoc
      # Creates a new instance of the commandline utility
      def initialize
        super
        @options = SymbolHash.new(false)
        @options.update(
          :format => :html,
          :template => :default,
          :markup => :rdoc, # default is :rdoc but falls back on :none
          :serializer => YARD::Serializers::WikiSerializer.new, # Sigh. :-(
          :default_return => "Object",
          :hide_void_return => false,
          :no_highlight => false,
          :files => [],
          :verifier => Verifier.new
        )
        @visibilities = [:public]
        @assets = {}
        @excluded = []
        @files = []
        @hidden_tags = []
        @use_cache = false
        @use_yardopts_file = true
        @use_document_file = true
        @generate = true
        @options_file = DEFAULT_YARDOPTS_FILE
        @statistics = true
        @list = false
        @save_yardoc = true
        @has_markup = false

        if defined?(::Encoding) && ::Encoding.respond_to?(:default_external=)
          ::Encoding.default_external, ::Encoding.default_internal = 'utf-8', 'utf-8'
        end
      end
    end
  end
end
