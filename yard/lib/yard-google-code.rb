$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))
$LOAD_PATH.uniq!

YARD::Templates::Engine.register_template_path File.dirname(__FILE__) + '/../templates'
require 'yard/templates/template'
require 'yard/templates/helpers/wiki_helper'

::YARD::Templates::Template.extra_includes |= [
  YARD::Templates::Helpers::WikiHelper
]

require 'yard/serializers/wiki_serializer'
