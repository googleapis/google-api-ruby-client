# encoding: utf-8

require 'yard/serializers/file_system_serializer'

module YARD
  module Serializers
    ##
    # Subclass required to get correct filename for the top level namespace.
    # :-(
    class WikiSerializer < FileSystemSerializer
      # Post-process the data before serializing.
      # Strip unnecessary whitespace.
      # Convert stuff into more wiki-friendly stuff.
      # FULL OF HACKS!
      def serialize(object, data)
        data = data.encode("UTF-8")
        if object == "Sidebar.wiki"
          data = data.gsub(/^#sidebar Sidebar\n/, "")
        end
        data = data.gsub(/\n\s*\n/, "\n")
        # ASCII/UTF-8 erb error work-around.
        data = data.gsub(/--/, "—")
        data = data.gsub(/——/, "----")
        data = data.gsub(/----\n----/, "----")
        # HACK! Google Code Wiki treats <code> blocks like <pre> blocks.
        data = data.gsub(/\<code\>(.+)\<\/code\>/, "`\\1`")
        super(object, data)
      end

      def serialized_path(object)
        return object if object.is_a?(String)

        if object.is_a?(CodeObjects::ExtraFileObject)
          fspath = ['file.' + object.name + (extension.empty? ? '' : ".#{extension}")]
        else
          # This line is the only change of significance.
          # Changed from 'top-level-namespace' to 'TopLevelNamespace' to
          # conform to wiki word page naming convention.
          objname = object != YARD::Registry.root ? object.name.to_s : "TopLevelNamespace"
          objname += '_' + object.scope.to_s[0,1] if object.is_a?(CodeObjects::MethodObject)
          fspath = [objname + (extension.empty? ? '' : ".#{extension}")]
          if object.namespace && object.namespace.path != ""
            fspath.unshift(*object.namespace.path.split(CodeObjects::NSEP))
          end
        end

        # Don't change the filenames, it just makes it more complicated
        # to figure out the original name.
        #fspath.map! do |p|
        #  p.gsub(/([a-z])([A-Z])/, '\1_\2').downcase
        #end

        # Remove special chars from filenames.
        # Windows disallows \ / : * ? " < > | but we will just remove any
        # non alphanumeric (plus period, underscore and dash).
        fspath.map! do |p|
          p.gsub(/[^\w\.-]/) do |x|
            encoded = '_'

            x.each_byte { |b| encoded << ("%X" % b) }
            encoded
          end
        end
        fspath.join("")
      end
    end
  end
end
