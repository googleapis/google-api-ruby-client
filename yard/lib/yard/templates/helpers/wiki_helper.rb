require 'cgi'
require 'rdiscount'

module YARD
  module Templates::Helpers
    # The helper module for HTML templates.
    module WikiHelper
      include MarkupHelper

      # @return [String] escapes text
      def h(text)
        out = ""
        text = text.split(/\n/)
        text.each_with_index do |line, i|
          out <<
          case line
          when /^\s*$/; "\n\n"
          when /^\s+\S/, /^=/; line + "\n"
          else; line + (text[i + 1] =~ /^\s+\S/ ? "\n" : " ")
          end
        end
        out.strip
      end

      # @return [String] wraps text at +col+ columns.
      def wrap(text, col = 72)
        text.strip.gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/, "\\1\\3\n")
      end

      # Escapes a URL
      # 
      # @param [String] text the URL
      # @return [String] the escaped URL
      def urlencode(text)
        CGI.escape(text.to_s)
      end

      def indent(text, len = 2)
        text.gsub(/^/, ' ' * len)
      end

      def unindent(text)
        lines = text.split("\n", -1)
        min_indent_size = text.size
        for line in lines
          indent_size = (line.gsub("\t", "  ") =~ /[^\s]/) || text.size
          min_indent_size = indent_size if indent_size < min_indent_size
        end
        text.gsub("\t", "  ").gsub(Regexp.new("^" + " " * min_indent_size), '')
      end

      # @group Converting Markup to HTML

      # Turns text into HTML using +markup+ style formatting.
      #
      # @param [String] text the text to format
      # @param [Symbol] markup examples are +:markdown+, +:textile+, +:rdoc+.
      #   To add a custom markup type, see {MarkupHelper}
      # @return [String] the HTML
      def htmlify(text, markup = options[:markup])
        markup_meth = "html_markup_#{markup}"
        return text unless respond_to?(markup_meth)
        return "" unless text
        return text unless markup
        load_markup_provider(markup)
        html = send(markup_meth, text)
        if html.respond_to?(:encode)
          html = html.force_encoding(text.encoding) # for libs that mess with encoding
          html = html.encode(:invalid => :replace, :replace => '?')
        end
        html = resolve_links(html)
        html = html.gsub(/<pre>(?:\s*<code>)?(.+?)(?:<\/code>\s*)?<\/pre>/m) do
          str = unindent($1).strip
          str = html_syntax_highlight(CGI.unescapeHTML(str)) unless options[:no_highlight]
          str
        end unless markup == :text
        html
      end

      # Converts Markdown to HTML
      # @param [String] text input Markdown text
      # @return [String] output HTML
      # @since 0.6.0
      def html_markup_markdown(text)
        Markdown.new(text).to_html
      end

      # Converts Textile to HTML
      # @param [String] text the input Textile text
      # @return [String] output HTML
      # @since 0.6.0
      def html_markup_textile(text)
        doc = markup_class(:textile).new(text)
        doc.hard_breaks = false if doc.respond_to?(:hard_breaks=)
        doc.to_html
      end

      # Converts plaintext to HTML
      # @param [String] text the input text
      # @return [String] the output HTML
      # @since 0.6.0
      def html_markup_text(text)
        "<pre>" + text + "</pre>"
      end

      # Converts HTML to HTML
      # @param [String] text input html
      # @return [String] output HTML
      # @since 0.6.0
      def html_markup_html(text)
        text
      end

      # @return [String] HTMLified text as a single line (paragraphs removed)
      def htmlify_line(*args)
        htmlify(*args)
      end

      # Fixes RDoc behaviour with ++ only supporting alphanumeric text.
      #
      # @todo Refactor into own SimpleMarkup subclass
      def fix_typewriter(text)
        text.gsub(/\+(?! )([^\n\+]{1,900})(?! )\+/) do
          type_text, pre_text, no_match = $1, $`, $&
          pre_match = pre_text.scan(%r(</?(?:pre|tt|code).*?>))
          if pre_match.last.nil? || pre_match.last.include?('/')
            '`' + h(type_text) + '`'
          else
            no_match
          end
        end
      end

      # Don't allow -- to turn into &#8212; element. The chances of this being
      # some --option is far more likely than the typographical meaning.
      #
      # @todo Refactor into own SimpleMarkup subclass
      def fix_dash_dash(text)
        text.gsub(/&#8212;(?=\S)/, '--')
      end

      # @group Syntax Highlighting Source Code

      # Syntax highlights +source+ in language +type+.
      #
      # @note To support a specific language +type+, implement the method
      #   +html_syntax_highlight_TYPE+ in this class.
      #
      # @param [String] source the source code to highlight
      # @param [Symbol] type the language type (:ruby, :plain, etc). Use
      #   :plain for no syntax highlighting.
      # @return [String] the highlighted source
      def html_syntax_highlight(source, type = nil)
        return "" unless source
        return "{{{\n#{source}\n}}}"
      end

      # @return [String] unhighlighted source
      def html_syntax_highlight_plain(source)
        return "" unless source
        return "{{{\n#{source}\n}}}"
      end

      # @group Linking Objects and URLs

      # Resolves any text in the form of +{Name}+ to the object specified by
      # Name. Also supports link titles in the form +{Name title}+.
      #
      # @example Linking to an instance method
      #   resolve_links("{MyClass#method}") # => "<a href='...'>MyClass#method</a>"
      # @example Linking to a class with a title
      #   resolve_links("{A::B::C the C class}") # => "<a href='...'>the c class</a>"
      # @param [String] text the text to resolve links in
      # @return [String] HTML with linkified references
      def resolve_links(text)
        code_tags = 0
        text.gsub(/<(\/)?(pre|code|tt)|\{(\S+?)(?:\s(.*?\S))?\}(?=[\W<]|.+<\/|$)/) do |str|
          closed, tag, name, title, match = $1, $2, $3, $4, $&
          if tag
            code_tags += (closed ? -1 : 1)
            next str
          end
          next str unless code_tags == 0

          next(match) if name[0,1] == '|'
          if object.is_a?(String)
            object
          else
            link = linkify(name, title)
            if link == name || link == title
              match = /(.+)?(\{#{Regexp.quote name}(?:\s.*?)?\})(.+)?/.match(text)
              file = (@file ? @file : object.file) || '(unknown)'
              line = (@file ? 1 : (object.docstring.line_range ? object.docstring.line_range.first : 1)) + (match ? $`.count("\n") : 0)
              log.warn "In file `#{file}':#{line}: Cannot resolve link to #{name} from text" + (match ? ":" : ".")
              log.warn((match[1] ? '...' : '') + match[2].gsub("\n","") + (match[3] ? '...' : '')) if match
            end

            link
          end
        end
      end

      def unlink(value)
        value.gsub(/\b(([A-Z][a-z]+){2,99})\b/, "!\\1")
      end

      # (see BaseHelper#link_file)
      def link_file(filename, title = nil, anchor = nil)
        link_url(url_for_file(filename, anchor), title)
      end

      # (see BaseHelper#link_include_object)
      def link_include_object(obj)
        htmlify(obj.docstring)
      end

      # (see BaseHelper#link_object)
      def link_object(obj, otitle = nil, anchor = nil, relative = true)
        return otitle if obj.nil?
        obj = Registry.resolve(object, obj, true, true) if obj.is_a?(String)
        if !otitle && obj.root?
          title = "Top Level Namespace"
        elsif otitle
          # title = "`" + otitle.to_s + "`"
          title = otitle.to_s
        elsif object.is_a?(CodeObjects::Base)
          # title = "`" + h(object.relative_path(obj)) + "`"
          title = h(object.relative_path(obj))
        else
          # title = "`" + h(obj.to_s) + "`"
          title = h(obj.to_s)
        end
        unless serializer
          return unlink(title)
        end
        return unlink(title) if obj.is_a?(CodeObjects::Proxy)

        link = url_for(obj, anchor, relative)
        if link
          link_url(link, title, :formatted => false)
        else
          unlink(title)
        end
      end

      # (see BaseHelper#link_url)
      def link_url(url, title = nil, params = {})
        title ||= url
        if url.to_s == ""
          title
        else
          if params[:formatted]
            "<a href=\"#{url}\">#{title}</a>"
          else
            "[#{url} #{title}]"
          end
        end
      end

      # @group URL Helpers

      # @param [CodeObjects::Base] object the object to get an anchor for
      # @return [String] the anchor for a specific object
      def anchor_for(object)
        # Method:_Google::APIClient#execute!
        case object
        when CodeObjects::MethodObject
          if object.scope == :instance
            "Method:_#{object.path}"
          elsif object.scope == :class
            "Method:_#{object.path}"
          end
        when CodeObjects::ClassVariableObject
          "#{object.name.to_s.gsub('@@', '')}-#{object.type}"
        when CodeObjects::Base
          "#{object.name}-#{object.type}"
        when CodeObjects::Proxy
          object.path
        else
          object.to_s
        end
      end

      # Returns the URL for an object.
      #
      # @param [String, CodeObjects::Base] obj the object (or object path) to link to
      # @param [String] anchor the anchor to link to
      # @param [Boolean] relative use a relative or absolute link
      # @return [String] the URL location of the object
      def url_for(obj, anchor = nil, relative = true)
        link = nil
        return link unless serializer
        if obj.kind_of?(CodeObjects::Base) && obj.root?
          return 'TopLevelNamespace'
        end

        if obj.is_a?(CodeObjects::Base) && !obj.is_a?(CodeObjects::NamespaceObject)
          # If the obj is not a namespace obj make it the anchor.
          anchor, obj = obj, obj.namespace
        end

        objpath = serializer.serialized_path(obj)
        return link unless objpath

        if relative
          fromobj = object
          if object.is_a?(CodeObjects::Base) &&
              !object.is_a?(CodeObjects::NamespaceObject)
            fromobj = fromobj.namespace
          end

          from = serializer.serialized_path(fromobj)
          link = File.relative_path(from, objpath)
        else
          link = objpath
        end

        return (
          link.gsub(/\.html$/, '').gsub(/\.wiki$/, '') +
          (anchor ? '#' + urlencode(anchor_for(anchor)) : '')
        )
      end

      # Returns the URL for a specific file
      #
      # @param [String] filename the filename to link to
      # @param [String] anchor optional anchor
      # @return [String] the URL pointing to the file
      def url_for_file(filename, anchor = nil)
        fromobj = object
        if CodeObjects::Base === fromobj && !fromobj.is_a?(CodeObjects::NamespaceObject)
          fromobj = fromobj.namespace
        end
        from = serializer.serialized_path(fromobj)
        if filename == options[:readme]
          filename = 'Documentation'
        else
          filename = File.basename(filename).gsub(/\.[^.]+$/, '').capitalize
        end
        link = File.relative_path(from, filename)
        return (
          link.gsub(/\.html$/, '').gsub(/\.wiki$/, '') +
          (anchor ? '#' + urlencode(anchor) : '')
        )
      end

      # @group Formatting Objects and Attributes

      # Formats a list of objects and links them
      # @return [String] a formatted list of objects
      def format_object_name_list(objects)
        objects.sort_by {|o| o.name.to_s.downcase }.map do |o|
          "<span class='name'>" + linkify(o, o.name) + "</span>"
        end.join(", ")
      end

      # Formats a list of types from a tag.
      #
      # @param [Array<String>, FalseClass] typelist
      #   the list of types to be formatted.
      #
      # @param [Boolean] brackets omits the surrounding
      #   brackets if +brackets+ is set to +false+.
      #
      # @return [String] the list of types formatted
      #   as [Type1, Type2, ...] with the types linked
      #   to their respective descriptions.
      #
      def format_types(typelist, brackets = true)
        return unless typelist.is_a?(Array)
        list = typelist.map do |type|
          type = type.gsub(/([<>])/) { h($1) }
          type = type.gsub(/([\w:]+)/) do
            $1 == "lt" || $1 == "gt" ? "`#{$1}`" : linkify($1, $1)
          end
        end
        list.empty? ? "" : (brackets ? "(#{list.join(", ")})" : list.join(", "))
      end

      # Get the return types for a method signature.
      #
      # @param [CodeObjects::MethodObject] meth the method object
      # @param [Boolean] link whether to link the types
      # @return [String] the signature types
      # @since 0.5.3
      def signature_types(meth, link = true)
        meth = convert_method_to_overload(meth)

        type = options[:default_return] || ""
        if meth.tag(:return) && meth.tag(:return).types
          types = meth.tags(:return).map {|t| t.types ? t.types : [] }.flatten.uniq
          first = link ? h(types.first) : format_types([types.first], false)
          if types.size == 2 && types.last == 'nil'
            type = first + '<sup>?</sup>'
          elsif types.size == 2 && types.last =~ /^(Array)?<#{Regexp.quote types.first}>$/
            type = first + '<sup>+</sup>'
          elsif types.size > 2
            type = [first, '...'].join(', ')
          elsif types == ['void'] && options[:hide_void_return]
            type = ""
          else
            type = link ? h(types.join(", ")) : format_types(types, false)
          end
        elsif !type.empty?
          type = link ? h(type) : format_types([type], false)
        end
        type = "(#{type.to_s.strip}) " unless type.empty?
        type
      end

      # Formats the signature of method +meth+.
      #
      # @param [CodeObjects::MethodObject] meth the method object to list
      #   the signature of
      # @param [Boolean] link whether to link the method signature to the details view
      # @param [Boolean] show_extras whether to show extra meta-data (visibility, attribute info)
      # @param [Boolean] full_attr_name whether to show the full attribute name
      #   ("name=" instead of "name")
      # @return [String] the formatted method signature
      def signature(meth, link = true, show_extras = true, full_attr_name = true)
        meth = convert_method_to_overload(meth)

        type = signature_types(meth, link)
        name = full_attr_name ? meth.name : meth.name.to_s.gsub(/^(\w+)=$/, '\1')
        blk = format_block(meth)
        args = !full_attr_name && meth.writer? ? "" : format_args(meth)
        extras = []
        extras_text = ''
        if show_extras
          if rw = meth.attr_info
            attname = [rw[:read] ? 'read' : nil, rw[:write] ? 'write' : nil].compact
            attname = attname.size == 1 ? attname.join('') + 'only' : nil
            extras << attname if attname
          end
          extras << meth.visibility if meth.visibility != :public
          extras_text = ' <span class="extras">(' + extras.join(", ") + ')</span>' unless extras.empty?
        end
        title = "%s *`%s`* `%s` `%s`" % [type, h(name.to_s).strip, args, blk]
        title.gsub!(/<tt>/, "")
        title.gsub!(/<\/tt>/, "")
        title.gsub!(/`\s*`/, "")
        title.strip!
        if link
          if meth.is_a?(YARD::CodeObjects::MethodObject)
            link_title =
              "#{h meth.name(true)} (#{meth.scope} #{meth.type})"
          else
            link_title = "#{h name} (#{meth.type})"
          end
          # This has to be raw HTML, can't wiki-format a link title otherwise.
          "<a href=\"#{url_for(meth)}\">#{title}</a>#{extras_text}"
        else
          title + extras_text
        end
      end

      # @group Getting the Character Encoding

      # Returns the current character set. The default value can be overridden
      # by setting the +LANG+ environment variable or by overriding this
      # method. In Ruby 1.9 you can also modify this value by setting
      # +Encoding.default_external+.
      #
      # @return [String] the current character set
      # @since 0.5.4
      def charset
        return 'utf-8' unless RUBY19 || lang = ENV['LANG']
        if RUBY19
          lang = Encoding.default_external.name.downcase
        else
          lang = lang.downcase.split('.').last
        end
        case lang
        when "ascii-8bit", "us-ascii", "ascii-7bit"; 'iso-8859-1'
        else; lang
        end
      end

      # @endgroup

      private

      # Converts a set of hash options into HTML attributes for a tag
      #
      # @param [Hash{String => String}] opts the tag options
      # @return [String] the tag attributes of an HTML tag
      def tag_attrs(opts = {})
        opts.sort_by {|k, v| k.to_s }.map {|k,v| "#{k}=#{v.to_s.inspect}" if v }.join(" ")
      end

      # Converts a {CodeObjects::MethodObject} into an overload object
      # @since 0.5.3
      def convert_method_to_overload(meth)
        # use first overload tag if it has a return type and method itself does not
        if !meth.tag(:return) && meth.tags(:overload).size == 1 && meth.tag(:overload).tag(:return)
          return meth.tag(:overload)
        end
        meth
      end
    end
  end
end
