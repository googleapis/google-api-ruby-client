# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module SlidesV1
      
      # The stretched picture fill. The page or page element is filled entirely with
      # the specified picture. The picture is stretched to fit its container.
      class StretchedPictureFill
        include Google::Apis::Core::Hashable
      
        # Reading the content_url:
        # An URL to a picture with a default lifetime of 30 minutes.
        # This URL is tagged with the account of the requester. Anyone with the URL
        # effectively accesses the picture as the original requester. Access to the
        # picture may be lost if the presentation's sharing settings change.
        # Writing the content_url:
        # The picture is fetched once at insertion time and a copy is stored for
        # display inside the presentation. Pictures must be less than 50MB in size,
        # cannot exceed 25 megapixels, and must be in either in PNG, JPEG, or GIF
        # format.
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        # A width and height.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::SlidesV1::Size]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_url = args[:content_url] if args.key?(:content_url)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # A PageElement kind representing an
      # image.
      class Image
        include Google::Apis::Core::Hashable
      
        # An URL to an image with a default lifetime of 30 minutes.
        # This URL is tagged with the account of the requester. Anyone with the URL
        # effectively accesses the image as the original requester. Access to the
        # image may be lost if the presentation's sharing settings change.
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        # The properties of the Image.
        # Corresponds to the JSON property `imageProperties`
        # @return [Google::Apis::SlidesV1::ImageProperties]
        attr_accessor :image_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_url = args[:content_url] if args.key?(:content_url)
          @image_properties = args[:image_properties] if args.key?(:image_properties)
        end
      end
      
      # The properties of the Video.
      class VideoProperties
        include Google::Apis::Core::Hashable
      
        # The outline of a PageElement.
        # If these fields are unset, they may be inherited from a parent placeholder
        # if it exists. If there is no parent, the fields will default to the value
        # used for new page elements created in the Slides editor, which may depend on
        # the page element kind.
        # Corresponds to the JSON property `outline`
        # @return [Google::Apis::SlidesV1::Outline]
        attr_accessor :outline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outline = args[:outline] if args.key?(:outline)
        end
      end
      
      # The crop properties of an object enclosed in a container. For example, an
      # Image.
      # The crop properties is represented by the offsets of four edges which define
      # a crop rectangle. The offsets are measured in percentage from the
      # corresponding edges of the object's original bounding rectangle towards
      # inside, relative to the object's original dimensions.
      # - If the offset is in the interval (0, 1), the corresponding edge of crop
      # rectangle is positioned inside of the object's original bounding rectangle.
      # - If the offset is negative or greater than 1, the corresponding edge of crop
      # rectangle is positioned outside of the object's original bounding rectangle.
      # - If the left edge of the crop rectangle is on the right side of its right
      # edge, the object will be flipped horizontally.
      # - If the top edge of the crop rectangle is below its bottom edge, the object
      # will be flipped vertically.
      # - If all offsets and rotation angle is 0, the object is not cropped.
      # After cropping, the content in the crop rectangle will be stretched to fit
      # its container.
      class CropProperties
        include Google::Apis::Core::Hashable
      
        # The offset specifies the right edge of the crop rectangle that is located
        # to the left of the original bounding rectangle right edge, relative to the
        # object's original width.
        # Corresponds to the JSON property `rightOffset`
        # @return [Float]
        attr_accessor :right_offset
      
        # The rotation angle of the crop window around its center, in radians.
        # Rotation angle is applied after the offset.
        # Corresponds to the JSON property `angle`
        # @return [Float]
        attr_accessor :angle
      
        # The offset specifies the left edge of the crop rectangle that is located to
        # the right of the original bounding rectangle left edge, relative to the
        # object's original width.
        # Corresponds to the JSON property `leftOffset`
        # @return [Float]
        attr_accessor :left_offset
      
        # The offset specifies the top edge of the crop rectangle that is located
        # below the original bounding rectangle top edge, relative to the object's
        # original height.
        # Corresponds to the JSON property `topOffset`
        # @return [Float]
        attr_accessor :top_offset
      
        # The offset specifies the bottom edge of the crop rectangle that is located
        # above the original bounding rectangle bottom edge, relative to the object's
        # original height.
        # Corresponds to the JSON property `bottomOffset`
        # @return [Float]
        attr_accessor :bottom_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @right_offset = args[:right_offset] if args.key?(:right_offset)
          @angle = args[:angle] if args.key?(:angle)
          @left_offset = args[:left_offset] if args.key?(:left_offset)
          @top_offset = args[:top_offset] if args.key?(:top_offset)
          @bottom_offset = args[:bottom_offset] if args.key?(:bottom_offset)
        end
      end
      
      # A table range represents a reference to a subset of a table.
      # It's important to note that the cells specified by a table range do not
      # necessarily form a rectangle. For example, let's say we have a 3 x 3 table
      # where all the cells of the last row are merged together. The table looks
      # like this:
      # 
      # [             ]
      # A table range with location = (0, 0), row span = 3 and column span = 2
      # specifies the following cells:
      # x     x
      # [      x      ]
      class TableRange
        include Google::Apis::Core::Hashable
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :location
      
        # The row span of the table range.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        # The column span of the table range.
        # Corresponds to the JSON property `columnSpan`
        # @return [Fixnum]
        attr_accessor :column_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @row_span = args[:row_span] if args.key?(:row_span)
          @column_span = args[:column_span] if args.key?(:column_span)
        end
      end
      
      # Update the styling of text in a Shape or
      # Table.
      class UpdateTextStyleRequest
        include Google::Apis::Core::Hashable
      
        # Represents the styling that can be applied to a TextRun.
        # If this text is contained in a shape with a parent placeholder, then these
        # text styles may be
        # inherited from the parent. Which text styles are inherited depend on the
        # nesting level of lists:
        # * A text run in a paragraph that is not in a list will inherit its text style
        # from the the newline character in the paragraph at the 0 nesting level of
        # the list inside the parent placeholder.
        # * A text run in a paragraph that is in a list will inherit its text style
        # from the newline character in the paragraph at its corresponding nesting
        # level of the list inside the parent placeholder.
        # Inherited text styles are represented as unset fields in this message. If
        # text is contained in a shape without a parent placeholder, unsetting these
        # fields will revert the style to a value matching the defaults in the Slides
        # editor.
        # Corresponds to the JSON property `style`
        # @return [Google::Apis::SlidesV1::TextStyle]
        attr_accessor :style
      
        # The object ID of the shape or table with the text to be styled.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The fields that should be updated.
        # At least one field must be specified. The root `style` is implied and
        # should not be specified. A single `"*"` can be used as short-hand for
        # listing every field.
        # For example to update the text style to bold, set `fields` to `"bold"`.
        # To reset a property to its default value,
        # include its field name in the field mask but leave the field itself unset.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Specifies a contiguous range of an indexed collection, such as characters in
        # text.
        # Corresponds to the JSON property `textRange`
        # @return [Google::Apis::SlidesV1::Range]
        attr_accessor :text_range
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @style = args[:style] if args.key?(:style)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @fields = args[:fields] if args.key?(:fields)
          @text_range = args[:text_range] if args.key?(:text_range)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
        end
      end
      
      # Inserts text into a shape or a table cell.
      class InsertTextRequest
        include Google::Apis::Core::Hashable
      
        # The text to be inserted.
        # Inserting a newline character will implicitly create a new
        # ParagraphMarker at that index.
        # The paragraph style of the new paragraph will be copied from the paragraph
        # at the current insertion index, including lists and bullets.
        # Text styles for inserted text will be determined automatically, generally
        # preserving the styling of neighboring text. In most cases, the text will be
        # added to the TextRun that exists at the
        # insertion index.
        # Some control characters (U+0000-U+0008, U+000C-U+001F) and characters
        # from the Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF)
        # will be stripped out of the inserted text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The object ID of the shape or table where the text will be inserted.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The index where the text will be inserted, in Unicode code units, based
        # on TextElement indexes.
        # The index is zero-based and is computed from the start of the string.
        # The index may be adjusted to prevent insertions inside Unicode grapheme
        # clusters. In these cases, the text will be inserted immediately after the
        # grapheme cluster.
        # Corresponds to the JSON property `insertionIndex`
        # @return [Fixnum]
        attr_accessor :insertion_index
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @insertion_index = args[:insertion_index] if args.key?(:insertion_index)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
        end
      end
      
      # An RGB color.
      class RgbColor
        include Google::Apis::Core::Hashable
      
        # The green component of the color, from 0.0 to 1.0.
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The blue component of the color, from 0.0 to 1.0.
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The red component of the color, from 0.0 to 1.0.
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @green = args[:green] if args.key?(:green)
          @blue = args[:blue] if args.key?(:blue)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # Common properties for a page element.
      # Note: When you initially create a
      # PageElement, the API may modify
      # the values of both `size` and `transform`, but the
      # visual size will be unchanged.
      class PageElementProperties
        include Google::Apis::Core::Hashable
      
        # A width and height.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::SlidesV1::Size]
        attr_accessor :size
      
        # The object ID of the page where the element is located.
        # Corresponds to the JSON property `pageObjectId`
        # @return [String]
        attr_accessor :page_object_id
      
        # AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ]
        # to transform source coordinates (x,y) into destination coordinates (x', y')
        # according to:
        # x'  x  =   shear_y  scale_y  translate_y
        # 1  [ 1 ]
        # After transformation,
        # x' = scale_x * x + shear_x * y + translate_x;
        # y' = scale_y * y + shear_y * x + translate_y;
        # This message is therefore composed of these six matrix elements.
        # Corresponds to the JSON property `transform`
        # @return [Google::Apis::SlidesV1::AffineTransform]
        attr_accessor :transform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @page_object_id = args[:page_object_id] if args.key?(:page_object_id)
          @transform = args[:transform] if args.key?(:transform)
        end
      end
      
      # Deletes text from a shape or a table cell.
      class DeleteTextRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the shape or table from which the text will be deleted.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Specifies a contiguous range of an indexed collection, such as characters in
        # text.
        # Corresponds to the JSON property `textRange`
        # @return [Google::Apis::SlidesV1::Range]
        attr_accessor :text_range
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @text_range = args[:text_range] if args.key?(:text_range)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
        end
      end
      
      # Styles that apply to a whole paragraph.
      # If this text is contained in a shape with a parent placeholder, then these
      # paragraph styles may be
      # inherited from the parent. Which paragraph styles are inherited depend on the
      # nesting level of lists:
      # * A paragraph not in a list will inherit its paragraph style from the
      # paragraph at the 0 nesting level of the list inside the parent placeholder.
      # * A paragraph in a list will inherit its paragraph style from the paragraph
      # at its corresponding nesting level of the list inside the parent
      # placeholder.
      # Inherited paragraph styles are represented as unset fields in this message.
      class ParagraphStyle
        include Google::Apis::Core::Hashable
      
        # The amount of space between lines, as a percentage of normal, where normal
        # is represented as 100.0. If unset, the value is inherited from the parent.
        # This property is read-only.
        # Corresponds to the JSON property `lineSpacing`
        # @return [Float]
        attr_accessor :line_spacing
      
        # The spacing mode for the paragraph. This property is read-only.
        # Corresponds to the JSON property `spacingMode`
        # @return [String]
        attr_accessor :spacing_mode
      
        # The text alignment for this paragraph. This property is read-only.
        # Corresponds to the JSON property `alignment`
        # @return [String]
        attr_accessor :alignment
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `spaceAbove`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :space_above
      
        # The text direction of this paragraph. This property is read-only.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `indentEnd`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :indent_end
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `indentFirstLine`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :indent_first_line
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `indentStart`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :indent_start
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `spaceBelow`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :space_below
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_spacing = args[:line_spacing] if args.key?(:line_spacing)
          @spacing_mode = args[:spacing_mode] if args.key?(:spacing_mode)
          @alignment = args[:alignment] if args.key?(:alignment)
          @space_above = args[:space_above] if args.key?(:space_above)
          @direction = args[:direction] if args.key?(:direction)
          @indent_end = args[:indent_end] if args.key?(:indent_end)
          @indent_first_line = args[:indent_first_line] if args.key?(:indent_first_line)
          @indent_start = args[:indent_start] if args.key?(:indent_start)
          @space_below = args[:space_below] if args.key?(:space_below)
        end
      end
      
      # A page in a presentation.
      class Page
        include Google::Apis::Core::Hashable
      
        # The properties of Page that are only
        # relevant for pages with page_type SLIDE.
        # Corresponds to the JSON property `slideProperties`
        # @return [Google::Apis::SlidesV1::SlideProperties]
        attr_accessor :slide_properties
      
        # The type of the page.
        # Corresponds to the JSON property `pageType`
        # @return [String]
        attr_accessor :page_type
      
        # The page elements rendered on the page.
        # Corresponds to the JSON property `pageElements`
        # @return [Array<Google::Apis::SlidesV1::PageElement>]
        attr_accessor :page_elements
      
        # The properties of the Page.
        # The page will inherit properties from the parent page. Depending on the page
        # type the hierarchy is defined in either
        # SlideProperties or
        # LayoutProperties.
        # Corresponds to the JSON property `pageProperties`
        # @return [Google::Apis::SlidesV1::PageProperties]
        attr_accessor :page_properties
      
        # The properties of Page are only
        # relevant for pages with page_type LAYOUT.
        # Corresponds to the JSON property `layoutProperties`
        # @return [Google::Apis::SlidesV1::LayoutProperties]
        attr_accessor :layout_properties
      
        # The object ID for this page. Object IDs used by
        # Page and
        # PageElement share the same namespace.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @slide_properties = args[:slide_properties] if args.key?(:slide_properties)
          @page_type = args[:page_type] if args.key?(:page_type)
          @page_elements = args[:page_elements] if args.key?(:page_elements)
          @page_properties = args[:page_properties] if args.key?(:page_properties)
          @layout_properties = args[:layout_properties] if args.key?(:layout_properties)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # Update the properties of a Shape.
      class UpdateShapePropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The properties of a Shape.
        # If the shape is a placeholder shape as determined by the
        # placeholder field, then these
        # properties may be inherited from a parent placeholder shape.
        # Determining the rendered value of the property depends on the corresponding
        # property_state field value.
        # Corresponds to the JSON property `shapeProperties`
        # @return [Google::Apis::SlidesV1::ShapeProperties]
        attr_accessor :shape_properties
      
        # The object ID of the shape the updates are applied to.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The fields that should be updated.
        # At least one field must be specified. The root `shapeProperties` is
        # implied and should not be specified. A single `"*"` can be used as
        # short-hand for listing every field.
        # For example to update the shape background solid fill color, set `fields`
        # to `"shapeBackgroundFill.solidFill.color"`.
        # To reset a property to its default value, include its field name in the
        # field mask but leave the field itself unset.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shape_properties = args[:shape_properties] if args.key?(:shape_properties)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # The result of creating a line.
      class CreateLineResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created line.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # A Google Slides presentation.
      class Presentation
        include Google::Apis::Core::Hashable
      
        # The title of the presentation.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The locale of the presentation, as an IETF BCP 47 language tag.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The slides in the presentation.
        # A slide inherits properties from a slide layout.
        # Corresponds to the JSON property `slides`
        # @return [Array<Google::Apis::SlidesV1::Page>]
        attr_accessor :slides
      
        # The slide masters in the presentation. A slide master contains all common
        # page elements and the common properties for a set of layouts. They serve
        # three purposes:
        # - Placeholder shapes on a master contain the default text styles and shape
        # properties of all placeholder shapes on pages that use that master.
        # - The master page properties define the common page properties inherited by
        # its layouts.
        # - Any other shapes on the master slide will appear on all slides using that
        # master, regardless of their layout.
        # Corresponds to the JSON property `masters`
        # @return [Array<Google::Apis::SlidesV1::Page>]
        attr_accessor :masters
      
        # A width and height.
        # Corresponds to the JSON property `pageSize`
        # @return [Google::Apis::SlidesV1::Size]
        attr_accessor :page_size
      
        # The ID of the presentation.
        # Corresponds to the JSON property `presentationId`
        # @return [String]
        attr_accessor :presentation_id
      
        # The layouts in the presentation.  A layout is a template that determines
        # how content is arranged and styled on the slides that inherit from that
        # layout.
        # Corresponds to the JSON property `layouts`
        # @return [Array<Google::Apis::SlidesV1::Page>]
        attr_accessor :layouts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @locale = args[:locale] if args.key?(:locale)
          @slides = args[:slides] if args.key?(:slides)
          @masters = args[:masters] if args.key?(:masters)
          @page_size = args[:page_size] if args.key?(:page_size)
          @presentation_id = args[:presentation_id] if args.key?(:presentation_id)
          @layouts = args[:layouts] if args.key?(:layouts)
        end
      end
      
      # Creates an image.
      class CreateImageRequest
        include Google::Apis::Core::Hashable
      
        # The image URL.
        # The image is fetched once at insertion time and a copy is stored for
        # display inside the presentation. Images must be less than 50MB in size,
        # cannot exceed 25 megapixels, and must be in either in PNG, JPEG, or GIF
        # format.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # A user-supplied object ID.
        # If you specify an ID, it must be unique among all pages and page elements
        # in the presentation. The ID must start with an alphanumeric character or an
        # underscore (matches regex `[a-zA-Z0-9_]`); remaining characters
        # may include those as well as a hyphen or colon (matches regex
        # `[a-zA-Z0-9_-:]`).
        # The length of the ID must not be less than 5 or greater than 50.
        # If you don't specify an ID, a unique one is generated.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Common properties for a page element.
        # Note: When you initially create a
        # PageElement, the API may modify
        # the values of both `size` and `transform`, but the
        # visual size will be unchanged.
        # Corresponds to the JSON property `elementProperties`
        # @return [Google::Apis::SlidesV1::PageElementProperties]
        attr_accessor :element_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @element_properties = args[:element_properties] if args.key?(:element_properties)
        end
      end
      
      # The properties of Page that are only
      # relevant for pages with page_type SLIDE.
      class SlideProperties
        include Google::Apis::Core::Hashable
      
        # The object ID of the layout that this slide is based on.
        # Corresponds to the JSON property `layoutObjectId`
        # @return [String]
        attr_accessor :layout_object_id
      
        # The object ID of the master that this slide is based on.
        # Corresponds to the JSON property `masterObjectId`
        # @return [String]
        attr_accessor :master_object_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @layout_object_id = args[:layout_object_id] if args.key?(:layout_object_id)
          @master_object_id = args[:master_object_id] if args.key?(:master_object_id)
        end
      end
      
      # Updates the transform of a page element.
      class UpdatePageElementTransformRequest
        include Google::Apis::Core::Hashable
      
        # The apply mode of the transform update.
        # Corresponds to the JSON property `applyMode`
        # @return [String]
        attr_accessor :apply_mode
      
        # The object ID of the page element to update.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ]
        # to transform source coordinates (x,y) into destination coordinates (x', y')
        # according to:
        # x'  x  =   shear_y  scale_y  translate_y
        # 1  [ 1 ]
        # After transformation,
        # x' = scale_x * x + shear_x * y + translate_x;
        # y' = scale_y * y + shear_y * x + translate_y;
        # This message is therefore composed of these six matrix elements.
        # Corresponds to the JSON property `transform`
        # @return [Google::Apis::SlidesV1::AffineTransform]
        attr_accessor :transform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apply_mode = args[:apply_mode] if args.key?(:apply_mode)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @transform = args[:transform] if args.key?(:transform)
        end
      end
      
      # A List describes the look and feel of bullets belonging to paragraphs
      # associated with a list. A paragraph that is part of a list has an implicit
      # reference to that list's ID.
      class List
        include Google::Apis::Core::Hashable
      
        # A map of nesting levels to the properties of bullets at the associated
        # level. A list has at most nine levels of nesting, so the possible values
        # for the keys of this map are 0 through 8, inclusive.
        # Corresponds to the JSON property `nestingLevel`
        # @return [Hash<String,Google::Apis::SlidesV1::NestingLevel>]
        attr_accessor :nesting_level
      
        # The ID of the list.
        # Corresponds to the JSON property `listId`
        # @return [String]
        attr_accessor :list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nesting_level = args[:nesting_level] if args.key?(:nesting_level)
          @list_id = args[:list_id] if args.key?(:list_id)
        end
      end
      
      # The result of creating a video.
      class CreateVideoResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created video.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # Inserts rows into a table.
      class InsertTableRowsRequest
        include Google::Apis::Core::Hashable
      
        # The table to insert rows into.
        # Corresponds to the JSON property `tableObjectId`
        # @return [String]
        attr_accessor :table_object_id
      
        # Whether to insert new rows below the reference cell location.
        # - `True`: insert below the cell.
        # - `False`: insert above the cell.
        # Corresponds to the JSON property `insertBelow`
        # @return [Boolean]
        attr_accessor :insert_below
        alias_method :insert_below?, :insert_below
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        # The number of rows to be inserted. Maximum 20 per request.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_object_id = args[:table_object_id] if args.key?(:table_object_id)
          @insert_below = args[:insert_below] if args.key?(:insert_below)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # Update the properties of a Video.
      class UpdateVideoPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The properties of the Video.
        # Corresponds to the JSON property `videoProperties`
        # @return [Google::Apis::SlidesV1::VideoProperties]
        attr_accessor :video_properties
      
        # The object ID of the video the updates are applied to.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The fields that should be updated.
        # At least one field must be specified. The root `videoProperties` is
        # implied and should not be specified. A single `"*"` can be used as
        # short-hand for listing every field.
        # For example to update the video outline color, set `fields` to
        # `"outline.outlineFill.solidFill.color"`.
        # To reset a property to its default value, include its field name in the
        # field mask but leave the field itself unset.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @video_properties = args[:video_properties] if args.key?(:video_properties)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # A themeable solid color value.
      class OpaqueColor
        include Google::Apis::Core::Hashable
      
        # An RGB color.
        # Corresponds to the JSON property `rgbColor`
        # @return [Google::Apis::SlidesV1::RgbColor]
        attr_accessor :rgb_color
      
        # An opaque theme color.
        # Corresponds to the JSON property `themeColor`
        # @return [String]
        attr_accessor :theme_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rgb_color = args[:rgb_color] if args.key?(:rgb_color)
          @theme_color = args[:theme_color] if args.key?(:theme_color)
        end
      end
      
      # A single response from an update.
      class Response
        include Google::Apis::Core::Hashable
      
        # The result of creating a table.
        # Corresponds to the JSON property `createTable`
        # @return [Google::Apis::SlidesV1::CreateTableResponse]
        attr_accessor :create_table
      
        # The result of replacing text.
        # Corresponds to the JSON property `replaceAllText`
        # @return [Google::Apis::SlidesV1::ReplaceAllTextResponse]
        attr_accessor :replace_all_text
      
        # The result of creating a line.
        # Corresponds to the JSON property `createLine`
        # @return [Google::Apis::SlidesV1::CreateLineResponse]
        attr_accessor :create_line
      
        # The result of creating an embedded Google Sheets chart.
        # Corresponds to the JSON property `createSheetsChart`
        # @return [Google::Apis::SlidesV1::CreateSheetsChartResponse]
        attr_accessor :create_sheets_chart
      
        # The result of creating a slide.
        # Corresponds to the JSON property `createSlide`
        # @return [Google::Apis::SlidesV1::CreateSlideResponse]
        attr_accessor :create_slide
      
        # The result of creating a shape.
        # Corresponds to the JSON property `createShape`
        # @return [Google::Apis::SlidesV1::CreateShapeResponse]
        attr_accessor :create_shape
      
        # The result of replacing shapes with an image.
        # Corresponds to the JSON property `replaceAllShapesWithImage`
        # @return [Google::Apis::SlidesV1::ReplaceAllShapesWithImageResponse]
        attr_accessor :replace_all_shapes_with_image
      
        # The result of creating a video.
        # Corresponds to the JSON property `createVideo`
        # @return [Google::Apis::SlidesV1::CreateVideoResponse]
        attr_accessor :create_video
      
        # The result of creating an image.
        # Corresponds to the JSON property `createImage`
        # @return [Google::Apis::SlidesV1::CreateImageResponse]
        attr_accessor :create_image
      
        # The response of duplicating an object.
        # Corresponds to the JSON property `duplicateObject`
        # @return [Google::Apis::SlidesV1::DuplicateObjectResponse]
        attr_accessor :duplicate_object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_table = args[:create_table] if args.key?(:create_table)
          @replace_all_text = args[:replace_all_text] if args.key?(:replace_all_text)
          @create_line = args[:create_line] if args.key?(:create_line)
          @create_sheets_chart = args[:create_sheets_chart] if args.key?(:create_sheets_chart)
          @create_slide = args[:create_slide] if args.key?(:create_slide)
          @create_shape = args[:create_shape] if args.key?(:create_shape)
          @replace_all_shapes_with_image = args[:replace_all_shapes_with_image] if args.key?(:replace_all_shapes_with_image)
          @create_video = args[:create_video] if args.key?(:create_video)
          @create_image = args[:create_image] if args.key?(:create_image)
          @duplicate_object = args[:duplicate_object] if args.key?(:duplicate_object)
        end
      end
      
      # The properties of the Line.
      # When unset, these fields default to values that match the appearance of
      # new lines created in the Slides editor.
      class LineProperties
        include Google::Apis::Core::Hashable
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `weight`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :weight
      
        # The style of the arrow at the beginning of the line.
        # Corresponds to the JSON property `startArrow`
        # @return [String]
        attr_accessor :start_arrow
      
        # The style of the arrow at the end of the line.
        # Corresponds to the JSON property `endArrow`
        # @return [String]
        attr_accessor :end_arrow
      
        # The fill of the line.
        # Corresponds to the JSON property `lineFill`
        # @return [Google::Apis::SlidesV1::LineFill]
        attr_accessor :line_fill
      
        # The dash style of the line.
        # Corresponds to the JSON property `dashStyle`
        # @return [String]
        attr_accessor :dash_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weight = args[:weight] if args.key?(:weight)
          @start_arrow = args[:start_arrow] if args.key?(:start_arrow)
          @end_arrow = args[:end_arrow] if args.key?(:end_arrow)
          @line_fill = args[:line_fill] if args.key?(:line_fill)
          @dash_style = args[:dash_style] if args.key?(:dash_style)
        end
      end
      
      # A PageElement kind representing a
      # table.
      class Table
        include Google::Apis::Core::Hashable
      
        # Number of columns in the table.
        # Corresponds to the JSON property `columns`
        # @return [Fixnum]
        attr_accessor :columns
      
        # Properties of each column.
        # Corresponds to the JSON property `tableColumns`
        # @return [Array<Google::Apis::SlidesV1::TableColumnProperties>]
        attr_accessor :table_columns
      
        # Number of rows in the table.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # Properties and contents of each row.
        # Cells that span multiple rows are contained in only one of these rows and
        # have a row_span greater
        # than 1.
        # Corresponds to the JSON property `tableRows`
        # @return [Array<Google::Apis::SlidesV1::TableRow>]
        attr_accessor :table_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @table_columns = args[:table_columns] if args.key?(:table_columns)
          @rows = args[:rows] if args.key?(:rows)
          @table_rows = args[:table_rows] if args.key?(:table_rows)
        end
      end
      
      # Contains properties describing the look and feel of a list bullet at a given
      # level of nesting.
      class NestingLevel
        include Google::Apis::Core::Hashable
      
        # Represents the styling that can be applied to a TextRun.
        # If this text is contained in a shape with a parent placeholder, then these
        # text styles may be
        # inherited from the parent. Which text styles are inherited depend on the
        # nesting level of lists:
        # * A text run in a paragraph that is not in a list will inherit its text style
        # from the the newline character in the paragraph at the 0 nesting level of
        # the list inside the parent placeholder.
        # * A text run in a paragraph that is in a list will inherit its text style
        # from the newline character in the paragraph at its corresponding nesting
        # level of the list inside the parent placeholder.
        # Inherited text styles are represented as unset fields in this message. If
        # text is contained in a shape without a parent placeholder, unsetting these
        # fields will revert the style to a value matching the defaults in the Slides
        # editor.
        # Corresponds to the JSON property `bulletStyle`
        # @return [Google::Apis::SlidesV1::TextStyle]
        attr_accessor :bullet_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bullet_style = args[:bullet_style] if args.key?(:bullet_style)
        end
      end
      
      # The response of duplicating an object.
      class DuplicateObjectResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the new duplicate object.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # Refreshes an embedded Google Sheets chart by replacing it with the latest
      # version of the chart from Google Sheets.
      # NOTE: Refreshing charts requires  at least one of the spreadsheets.readonly,
      # spreadsheets, drive.readonly, or drive OAuth scopes.
      class RefreshSheetsChartRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the chart to refresh.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # A location of a single table cell within a table.
      class TableCellLocation
        include Google::Apis::Core::Hashable
      
        # The 0-based row index.
        # Corresponds to the JSON property `rowIndex`
        # @return [Fixnum]
        attr_accessor :row_index
      
        # The 0-based column index.
        # Corresponds to the JSON property `columnIndex`
        # @return [Fixnum]
        attr_accessor :column_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_index = args[:row_index] if args.key?(:row_index)
          @column_index = args[:column_index] if args.key?(:column_index)
        end
      end
      
      # The general text content. The text must reside in a compatible shape (e.g.
      # text box or rectangle) or a table cell in a page.
      class TextContent
        include Google::Apis::Core::Hashable
      
        # The bulleted lists contained in this text, keyed by list ID.
        # Corresponds to the JSON property `lists`
        # @return [Hash<String,Google::Apis::SlidesV1::List>]
        attr_accessor :lists
      
        # The text contents broken down into its component parts, including styling
        # information. This property is read-only.
        # Corresponds to the JSON property `textElements`
        # @return [Array<Google::Apis::SlidesV1::TextElement>]
        attr_accessor :text_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lists = args[:lists] if args.key?(:lists)
          @text_elements = args[:text_elements] if args.key?(:text_elements)
        end
      end
      
      # A visual element rendered on a page.
      class PageElement
        include Google::Apis::Core::Hashable
      
        # The description of the page element. Combined with title to display alt
        # text.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The title of the page element. Combined with description to display alt
        # text.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ]
        # to transform source coordinates (x,y) into destination coordinates (x', y')
        # according to:
        # x'  x  =   shear_y  scale_y  translate_y
        # 1  [ 1 ]
        # After transformation,
        # x' = scale_x * x + shear_x * y + translate_x;
        # y' = scale_y * y + shear_y * x + translate_y;
        # This message is therefore composed of these six matrix elements.
        # Corresponds to the JSON property `transform`
        # @return [Google::Apis::SlidesV1::AffineTransform]
        attr_accessor :transform
      
        # A PageElement kind representing a
        # video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::SlidesV1::Video]
        attr_accessor :video
      
        # A PageElement kind representing
        # a linked chart embedded from Google Sheets.
        # Corresponds to the JSON property `sheetsChart`
        # @return [Google::Apis::SlidesV1::SheetsChart]
        attr_accessor :sheets_chart
      
        # A PageElement kind representing a
        # line, curved connector, or bent connector.
        # Corresponds to the JSON property `line`
        # @return [Google::Apis::SlidesV1::Line]
        attr_accessor :line
      
        # A PageElement kind representing a
        # table.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::SlidesV1::Table]
        attr_accessor :table
      
        # A PageElement kind representing
        # word art.
        # Corresponds to the JSON property `wordArt`
        # @return [Google::Apis::SlidesV1::WordArt]
        attr_accessor :word_art
      
        # A PageElement kind representing a
        # generic shape that does not have a more specific classification.
        # Corresponds to the JSON property `shape`
        # @return [Google::Apis::SlidesV1::Shape]
        attr_accessor :shape
      
        # A PageElement kind representing a
        # joined collection of PageElements.
        # Corresponds to the JSON property `elementGroup`
        # @return [Google::Apis::SlidesV1::Group]
        attr_accessor :element_group
      
        # A PageElement kind representing an
        # image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::SlidesV1::Image]
        attr_accessor :image
      
        # The object ID for this page element. Object IDs used by
        # google.apps.slides.v1.Page and
        # google.apps.slides.v1.PageElement share the same namespace.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # A width and height.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::SlidesV1::Size]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
          @transform = args[:transform] if args.key?(:transform)
          @video = args[:video] if args.key?(:video)
          @sheets_chart = args[:sheets_chart] if args.key?(:sheets_chart)
          @line = args[:line] if args.key?(:line)
          @table = args[:table] if args.key?(:table)
          @word_art = args[:word_art] if args.key?(:word_art)
          @shape = args[:shape] if args.key?(:shape)
          @element_group = args[:element_group] if args.key?(:element_group)
          @image = args[:image] if args.key?(:image)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # Updates the properties of a Page.
      class UpdatePagePropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the page the update is applied to.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The fields that should be updated.
        # At least one field must be specified. The root `pageProperties` is
        # implied and should not be specified. A single `"*"` can be used as
        # short-hand for listing every field.
        # For example to update the page background solid fill color, set `fields`
        # to `"pageBackgroundFill.solidFill.color"`.
        # To reset a property to its default value, include its field name in the
        # field mask but leave the field itself unset.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # The properties of the Page.
        # The page will inherit properties from the parent page. Depending on the page
        # type the hierarchy is defined in either
        # SlideProperties or
        # LayoutProperties.
        # Corresponds to the JSON property `pageProperties`
        # @return [Google::Apis::SlidesV1::PageProperties]
        attr_accessor :page_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @fields = args[:fields] if args.key?(:fields)
          @page_properties = args[:page_properties] if args.key?(:page_properties)
        end
      end
      
      # Update the properties of a TableCell.
      class UpdateTableCellPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the table.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # A table range represents a reference to a subset of a table.
        # It's important to note that the cells specified by a table range do not
        # necessarily form a rectangle. For example, let's say we have a 3 x 3 table
        # where all the cells of the last row are merged together. The table looks
        # like this:
        # 
        # [             ]
        # A table range with location = (0, 0), row span = 3 and column span = 2
        # specifies the following cells:
        # x     x
        # [      x      ]
        # Corresponds to the JSON property `tableRange`
        # @return [Google::Apis::SlidesV1::TableRange]
        attr_accessor :table_range
      
        # The fields that should be updated.
        # At least one field must be specified. The root `tableCellProperties` is
        # implied and should not be specified. A single `"*"` can be used as
        # short-hand for listing every field.
        # For example to update the table cell background solid fill color, set
        # `fields` to `"tableCellBackgroundFill.solidFill.color"`.
        # To reset a property to its default value, include its field name in the
        # field mask but leave the field itself unset.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # The properties of the TableCell.
        # Corresponds to the JSON property `tableCellProperties`
        # @return [Google::Apis::SlidesV1::TableCellProperties]
        attr_accessor :table_cell_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @table_range = args[:table_range] if args.key?(:table_range)
          @fields = args[:fields] if args.key?(:fields)
          @table_cell_properties = args[:table_cell_properties] if args.key?(:table_cell_properties)
        end
      end
      
      # Request message for PresentationsService.BatchUpdatePresentation.
      class BatchUpdatePresentationRequest
        include Google::Apis::Core::Hashable
      
        # A list of updates to apply to the presentation.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::SlidesV1::Request>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # A magnitude in a single direction in the specified units.
      class Dimension
        include Google::Apis::Core::Hashable
      
        # The units for magnitude.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The magnitude.
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
        end
      end
      
      # The placeholder information that uniquely identifies a placeholder shape.
      class Placeholder
        include Google::Apis::Core::Hashable
      
        # The index of the placeholder. If the same placeholder types are the present
        # in the same page, they would have different index values.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The type of the placeholder.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The object ID of this shape's parent placeholder.
        # If unset, the parent placeholder shape does not exist, so the shape does
        # not inherit properties from any other shape.
        # Corresponds to the JSON property `parentObjectId`
        # @return [String]
        attr_accessor :parent_object_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @type = args[:type] if args.key?(:type)
          @parent_object_id = args[:parent_object_id] if args.key?(:parent_object_id)
        end
      end
      
      # Creates an embedded Google Sheets chart.
      # NOTE: Chart creation requires  at least one of the spreadsheets.readonly,
      # spreadsheets, drive.readonly, or drive OAuth scopes.
      class CreateSheetsChartRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the specific chart in the Google Sheets spreadsheet.
        # Corresponds to the JSON property `chartId`
        # @return [Fixnum]
        attr_accessor :chart_id
      
        # A user-supplied object ID.
        # If specified, the ID must be unique among all pages and page elements in
        # the presentation. The ID should start with a word character [a-zA-Z0-9_]
        # and then followed by any number of the following characters [a-zA-Z0-9_-:].
        # The length of the ID should not be less than 5 or greater than 50.
        # If empty, a unique identifier will be generated.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The ID of the Google Sheets spreadsheet that contains the chart.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # Common properties for a page element.
        # Note: When you initially create a
        # PageElement, the API may modify
        # the values of both `size` and `transform`, but the
        # visual size will be unchanged.
        # Corresponds to the JSON property `elementProperties`
        # @return [Google::Apis::SlidesV1::PageElementProperties]
        attr_accessor :element_properties
      
        # The mode with which the chart is linked to the source spreadsheet. When
        # not specified, the chart will be an image that is not linked.
        # Corresponds to the JSON property `linkingMode`
        # @return [String]
        attr_accessor :linking_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_id = args[:chart_id] if args.key?(:chart_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @element_properties = args[:element_properties] if args.key?(:element_properties)
          @linking_mode = args[:linking_mode] if args.key?(:linking_mode)
        end
      end
      
      # Deletes a row from a table.
      class DeleteTableRowRequest
        include Google::Apis::Core::Hashable
      
        # The table to delete rows from.
        # Corresponds to the JSON property `tableObjectId`
        # @return [String]
        attr_accessor :table_object_id
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_object_id = args[:table_object_id] if args.key?(:table_object_id)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
        end
      end
      
      # A PageElement kind representing a
      # video.
      class Video
        include Google::Apis::Core::Hashable
      
        # An URL to a video. The URL is valid as long as the source video
        # exists and sharing settings do not change.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # The properties of the Video.
        # Corresponds to the JSON property `videoProperties`
        # @return [Google::Apis::SlidesV1::VideoProperties]
        attr_accessor :video_properties
      
        # The video source.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The video source's unique identifier for this video.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @video_properties = args[:video_properties] if args.key?(:video_properties)
          @source = args[:source] if args.key?(:source)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # A hypertext link.
      class Link
        include Google::Apis::Core::Hashable
      
        # If set, indicates this is a link to the external web page at this URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # If set, indicates this is a link to a slide in this presentation,
        # addressed by its position.
        # Corresponds to the JSON property `relativeLink`
        # @return [String]
        attr_accessor :relative_link
      
        # If set, indicates this is a link to the slide at this zero-based index
        # in the presentation. There may not be a slide at this index.
        # Corresponds to the JSON property `slideIndex`
        # @return [Fixnum]
        attr_accessor :slide_index
      
        # If set, indicates this is a link to the specific page in this
        # presentation with this ID. A page with this ID may not exist.
        # Corresponds to the JSON property `pageObjectId`
        # @return [String]
        attr_accessor :page_object_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @relative_link = args[:relative_link] if args.key?(:relative_link)
          @slide_index = args[:slide_index] if args.key?(:slide_index)
          @page_object_id = args[:page_object_id] if args.key?(:page_object_id)
        end
      end
      
      # The page background fill.
      class PageBackgroundFill
        include Google::Apis::Core::Hashable
      
        # The stretched picture fill. The page or page element is filled entirely with
        # the specified picture. The picture is stretched to fit its container.
        # Corresponds to the JSON property `stretchedPictureFill`
        # @return [Google::Apis::SlidesV1::StretchedPictureFill]
        attr_accessor :stretched_picture_fill
      
        # The background fill property state.
        # Updating the the fill on a page will implicitly update this field to
        # `RENDERED`, unless another value is specified in the same request. To
        # have no fill on a page, set this field to `NOT_RENDERED`. In this case,
        # any other fill fields set in the same request will be ignored.
        # Corresponds to the JSON property `propertyState`
        # @return [String]
        attr_accessor :property_state
      
        # A solid color fill. The page or page element is filled entirely with the
        # specified color value.
        # If any field is unset, its value may be inherited from a parent placeholder
        # if it exists.
        # Corresponds to the JSON property `solidFill`
        # @return [Google::Apis::SlidesV1::SolidFill]
        attr_accessor :solid_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stretched_picture_fill = args[:stretched_picture_fill] if args.key?(:stretched_picture_fill)
          @property_state = args[:property_state] if args.key?(:property_state)
          @solid_fill = args[:solid_fill] if args.key?(:solid_fill)
        end
      end
      
      # A color and position in a gradient band.
      class ColorStop
        include Google::Apis::Core::Hashable
      
        # A themeable solid color value.
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::SlidesV1::OpaqueColor]
        attr_accessor :color
      
        # The relative position of the color stop in the gradient band measured
        # in percentage. The value should be in the interval [0.0, 1.0].
        # Corresponds to the JSON property `position`
        # @return [Float]
        attr_accessor :position
      
        # The alpha value of this color in the gradient band. Defaults to 1.0,
        # fully opaque.
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] if args.key?(:color)
          @position = args[:position] if args.key?(:position)
          @alpha = args[:alpha] if args.key?(:alpha)
        end
      end
      
      # A pair mapping a theme color type to the concrete color it represents.
      class ThemeColorPair
        include Google::Apis::Core::Hashable
      
        # An RGB color.
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::SlidesV1::RgbColor]
        attr_accessor :color
      
        # The type of the theme color.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] if args.key?(:color)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Replaces all shapes that match the given criteria with the provided image.
      class ReplaceAllShapesWithImageRequest
        include Google::Apis::Core::Hashable
      
        # The replace method.
        # Corresponds to the JSON property `replaceMethod`
        # @return [String]
        attr_accessor :replace_method
      
        # A criteria that matches a specific string of text in a shape or table.
        # Corresponds to the JSON property `containsText`
        # @return [Google::Apis::SlidesV1::SubstringMatchCriteria]
        attr_accessor :contains_text
      
        # The image URL.
        # The image is fetched once at insertion time and a copy is stored for
        # display inside the presentation. Images must be less than 50MB in size,
        # cannot exceed 25 megapixels, and must be in either in PNG, JPEG, or GIF
        # format.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replace_method = args[:replace_method] if args.key?(:replace_method)
          @contains_text = args[:contains_text] if args.key?(:contains_text)
          @image_url = args[:image_url] if args.key?(:image_url)
        end
      end
      
      # Deletes an object, either pages or
      # page elements, from the
      # presentation.
      class DeleteObjectRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the page or page element to delete.
        # If after a delete operation a group contains
        # only 1 or no page elements, the group is also deleted.
        # If a placeholder is deleted on a layout, any empty inheriting shapes are
        # also deleted.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # The result of creating an image.
      class CreateImageResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created image.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # A recolor effect applied on an image.
      class Recolor
        include Google::Apis::Core::Hashable
      
        # The recolor effect is represented by a gradient, which is a list of color
        # stops. This property is read-only.
        # Corresponds to the JSON property `recolorStops`
        # @return [Array<Google::Apis::SlidesV1::ColorStop>]
        attr_accessor :recolor_stops
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recolor_stops = args[:recolor_stops] if args.key?(:recolor_stops)
        end
      end
      
      # Represents the styling that can be applied to a TextRun.
      # If this text is contained in a shape with a parent placeholder, then these
      # text styles may be
      # inherited from the parent. Which text styles are inherited depend on the
      # nesting level of lists:
      # * A text run in a paragraph that is not in a list will inherit its text style
      # from the the newline character in the paragraph at the 0 nesting level of
      # the list inside the parent placeholder.
      # * A text run in a paragraph that is in a list will inherit its text style
      # from the newline character in the paragraph at its corresponding nesting
      # level of the list inside the parent placeholder.
      # Inherited text styles are represented as unset fields in this message. If
      # text is contained in a shape without a parent placeholder, unsetting these
      # fields will revert the style to a value matching the defaults in the Slides
      # editor.
      class TextStyle
        include Google::Apis::Core::Hashable
      
        # Whether or not the text is bold.
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # Whether or not the text is italicized.
        # Corresponds to the JSON property `italic`
        # @return [Boolean]
        attr_accessor :italic
        alias_method :italic?, :italic
      
        # The text's vertical offset from its normal position.
        # Text with `SUPERSCRIPT` or `SUBSCRIPT` baseline offsets is automatically
        # rendered in a smaller font size, computed based on the `font_size` field.
        # The `font_size` itself is not affected by changes in this field.
        # Corresponds to the JSON property `baselineOffset`
        # @return [String]
        attr_accessor :baseline_offset
      
        # A color that can either be fully opaque or fully transparent.
        # Corresponds to the JSON property `foregroundColor`
        # @return [Google::Apis::SlidesV1::OptionalColor]
        attr_accessor :foreground_color
      
        # The font family of the text.
        # The font family can be any font from the Font menu in Slides or from
        # [Google Fonts] (https://fonts.google.com/). If the font name is
        # unrecognized, the text is rendered in `Arial`.
        # Some fonts can affect the weight of the text. If an update request
        # specifies values for both `font_family` and `bold`, the explicitly-set
        # `bold` value is used.
        # Corresponds to the JSON property `fontFamily`
        # @return [String]
        attr_accessor :font_family
      
        # Whether or not the text is struck through.
        # Corresponds to the JSON property `strikethrough`
        # @return [Boolean]
        attr_accessor :strikethrough
        alias_method :strikethrough?, :strikethrough
      
        # A hypertext link.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::SlidesV1::Link]
        attr_accessor :link
      
        # Whether or not the text is in small capital letters.
        # Corresponds to the JSON property `smallCaps`
        # @return [Boolean]
        attr_accessor :small_caps
        alias_method :small_caps?, :small_caps
      
        # A color that can either be fully opaque or fully transparent.
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::SlidesV1::OptionalColor]
        attr_accessor :background_color
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :font_size
      
        # Whether or not the text is underlined.
        # Corresponds to the JSON property `underline`
        # @return [Boolean]
        attr_accessor :underline
        alias_method :underline?, :underline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bold = args[:bold] if args.key?(:bold)
          @italic = args[:italic] if args.key?(:italic)
          @baseline_offset = args[:baseline_offset] if args.key?(:baseline_offset)
          @foreground_color = args[:foreground_color] if args.key?(:foreground_color)
          @font_family = args[:font_family] if args.key?(:font_family)
          @strikethrough = args[:strikethrough] if args.key?(:strikethrough)
          @link = args[:link] if args.key?(:link)
          @small_caps = args[:small_caps] if args.key?(:small_caps)
          @background_color = args[:background_color] if args.key?(:background_color)
          @font_size = args[:font_size] if args.key?(:font_size)
          @underline = args[:underline] if args.key?(:underline)
        end
      end
      
      # The table cell background fill.
      class TableCellBackgroundFill
        include Google::Apis::Core::Hashable
      
        # The background fill property state.
        # Updating the the fill on a table cell will implicitly update this field
        # to `RENDERED`, unless another value is specified in the same request. To
        # have no fill on a table cell, set this field to `NOT_RENDERED`. In this
        # case, any other fill fields set in the same request will be ignored.
        # Corresponds to the JSON property `propertyState`
        # @return [String]
        attr_accessor :property_state
      
        # A solid color fill. The page or page element is filled entirely with the
        # specified color value.
        # If any field is unset, its value may be inherited from a parent placeholder
        # if it exists.
        # Corresponds to the JSON property `solidFill`
        # @return [Google::Apis::SlidesV1::SolidFill]
        attr_accessor :solid_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_state = args[:property_state] if args.key?(:property_state)
          @solid_fill = args[:solid_fill] if args.key?(:solid_fill)
        end
      end
      
      # A solid color fill. The page or page element is filled entirely with the
      # specified color value.
      # If any field is unset, its value may be inherited from a parent placeholder
      # if it exists.
      class SolidFill
        include Google::Apis::Core::Hashable
      
        # A themeable solid color value.
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::SlidesV1::OpaqueColor]
        attr_accessor :color
      
        # The fraction of this `color` that should be applied to the pixel.
        # That is, the final pixel color is defined by the equation:
        # pixel color = alpha * (color) + (1.0 - alpha) * (background color)
        # This means that a value of 1.0 corresponds to a solid color, whereas
        # a value of 0.0 corresponds to a completely transparent color.
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] if args.key?(:color)
          @alpha = args[:alpha] if args.key?(:alpha)
        end
      end
      
      # Duplicates a slide or page element.
      # When duplicating a slide, the duplicate slide will be created immediately
      # following the specified slide. When duplicating a page element, the duplicate
      # will be placed on the same page at the same position as the original.
      class DuplicateObjectRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the object to duplicate.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The object being duplicated may contain other objects, for example when
        # duplicating a slide or a group page element. This map defines how the IDs
        # of duplicated objects are generated: the keys are the IDs of the original
        # objects and its values are the IDs that will be assigned to the
        # corresponding duplicate object. The ID of the source object's duplicate
        # may be specified in this map as well, using the same value of the
        # `object_id` field as a key and the newly desired ID as the value.
        # All keys must correspond to existing IDs in the presentation. All values
        # must be unique in the presentation and must start with an alphanumeric
        # character or an underscore (matches regex `[a-zA-Z0-9_]`); remaining
        # characters may include those as well as a hyphen or colon (matches regex
        # `[a-zA-Z0-9_-:]`). The length of the new ID must not be less than 5 or
        # greater than 50.
        # If any IDs of source objects are omitted from the map, a new random ID will
        # be assigned. If the map is empty or unset, all duplicate objects will
        # receive a new random ID.
        # Corresponds to the JSON property `objectIds`
        # @return [Hash<String,String>]
        attr_accessor :object_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @object_ids = args[:object_ids] if args.key?(:object_ids)
        end
      end
      
      # A PageElement kind representing
      # a linked chart embedded from Google Sheets.
      class SheetsChart
        include Google::Apis::Core::Hashable
      
        # The ID of the specific chart in the Google Sheets spreadsheet that is
        # embedded.
        # Corresponds to the JSON property `chartId`
        # @return [Fixnum]
        attr_accessor :chart_id
      
        # The ID of the Google Sheets spreadsheet that contains the source chart.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The properties of the SheetsChart.
        # Corresponds to the JSON property `sheetsChartProperties`
        # @return [Google::Apis::SlidesV1::SheetsChartProperties]
        attr_accessor :sheets_chart_properties
      
        # The URL of an image of the embedded chart, with a default lifetime of 30
        # minutes. This URL is tagged with the account of the requester. Anyone with
        # the URL effectively accesses the image as the original requester. Access to
        # the image may be lost if the presentation's sharing settings change.
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_id = args[:chart_id] if args.key?(:chart_id)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @sheets_chart_properties = args[:sheets_chart_properties] if args.key?(:sheets_chart_properties)
          @content_url = args[:content_url] if args.key?(:content_url)
        end
      end
      
      # The properties of the Page.
      # The page will inherit properties from the parent page. Depending on the page
      # type the hierarchy is defined in either
      # SlideProperties or
      # LayoutProperties.
      class PageProperties
        include Google::Apis::Core::Hashable
      
        # The page background fill.
        # Corresponds to the JSON property `pageBackgroundFill`
        # @return [Google::Apis::SlidesV1::PageBackgroundFill]
        attr_accessor :page_background_fill
      
        # The palette of predefined colors for a page.
        # Corresponds to the JSON property `colorScheme`
        # @return [Google::Apis::SlidesV1::ColorScheme]
        attr_accessor :color_scheme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_background_fill = args[:page_background_fill] if args.key?(:page_background_fill)
          @color_scheme = args[:color_scheme] if args.key?(:color_scheme)
        end
      end
      
      # The shadow properties of a page element.
      # If these fields are unset, they may be inherited from a parent placeholder
      # if it exists. If there is no parent, the fields will default to the value
      # used for new page elements created in the Slides editor, which may depend on
      # the page element kind.
      class Shadow
        include Google::Apis::Core::Hashable
      
        # The alignment point of the shadow, that sets the origin for translate,
        # scale and skew of the shadow.
        # Corresponds to the JSON property `alignment`
        # @return [String]
        attr_accessor :alignment
      
        # Whether the shadow should rotate with the shape.
        # Corresponds to the JSON property `rotateWithShape`
        # @return [Boolean]
        attr_accessor :rotate_with_shape
        alias_method :rotate_with_shape?, :rotate_with_shape
      
        # AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ]
        # to transform source coordinates (x,y) into destination coordinates (x', y')
        # according to:
        # x'  x  =   shear_y  scale_y  translate_y
        # 1  [ 1 ]
        # After transformation,
        # x' = scale_x * x + shear_x * y + translate_x;
        # y' = scale_y * y + shear_y * x + translate_y;
        # This message is therefore composed of these six matrix elements.
        # Corresponds to the JSON property `transform`
        # @return [Google::Apis::SlidesV1::AffineTransform]
        attr_accessor :transform
      
        # A themeable solid color value.
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::SlidesV1::OpaqueColor]
        attr_accessor :color
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `blurRadius`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :blur_radius
      
        # The shadow property state.
        # Updating the the shadow on a page element will implicitly update this field
        # to `RENDERED`, unless another value is specified in the same request. To
        # have no shadow on a page element, set this field to `NOT_RENDERED`. In this
        # case, any other shadow fields set in the same request will be ignored.
        # Corresponds to the JSON property `propertyState`
        # @return [String]
        attr_accessor :property_state
      
        # The alpha of the shadow's color, from 0.0 to 1.0.
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The type of the shadow.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignment = args[:alignment] if args.key?(:alignment)
          @rotate_with_shape = args[:rotate_with_shape] if args.key?(:rotate_with_shape)
          @transform = args[:transform] if args.key?(:transform)
          @color = args[:color] if args.key?(:color)
          @blur_radius = args[:blur_radius] if args.key?(:blur_radius)
          @property_state = args[:property_state] if args.key?(:property_state)
          @alpha = args[:alpha] if args.key?(:alpha)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Slide layout reference. This may reference either:
      # - A predefined layout, or
      # - One of the layouts in the presentation.
      class LayoutReference
        include Google::Apis::Core::Hashable
      
        # Predefined layout.
        # Corresponds to the JSON property `predefinedLayout`
        # @return [String]
        attr_accessor :predefined_layout
      
        # Layout ID: the object ID of one of the layouts in the presentation.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @predefined_layout = args[:predefined_layout] if args.key?(:predefined_layout)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
        end
      end
      
      # The result of creating an embedded Google Sheets chart.
      class CreateSheetsChartResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created chart.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # The result of replacing text.
      class ReplaceAllTextResponse
        include Google::Apis::Core::Hashable
      
        # The number of occurrences changed by replacing all text.
        # Corresponds to the JSON property `occurrencesChanged`
        # @return [Fixnum]
        attr_accessor :occurrences_changed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @occurrences_changed = args[:occurrences_changed] if args.key?(:occurrences_changed)
        end
      end
      
      # The properties of Page are only
      # relevant for pages with page_type LAYOUT.
      class LayoutProperties
        include Google::Apis::Core::Hashable
      
        # The human readable name of the layout in the presentation's locale.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The object ID of the master that this layout is based on.
        # Corresponds to the JSON property `masterObjectId`
        # @return [String]
        attr_accessor :master_object_id
      
        # The name of the layout.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @master_object_id = args[:master_object_id] if args.key?(:master_object_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Inserts columns into a table.
      # Other columns in the table will be resized to fit the new column.
      class InsertTableColumnsRequest
        include Google::Apis::Core::Hashable
      
        # The table to insert columns into.
        # Corresponds to the JSON property `tableObjectId`
        # @return [String]
        attr_accessor :table_object_id
      
        # Whether to insert new columns to the right of the reference cell location.
        # - `True`: insert to the right.
        # - `False`: insert to the left.
        # Corresponds to the JSON property `insertRight`
        # @return [Boolean]
        attr_accessor :insert_right
        alias_method :insert_right?, :insert_right
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        # The number of columns to be inserted. Maximum 20 per request.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_object_id = args[:table_object_id] if args.key?(:table_object_id)
          @insert_right = args[:insert_right] if args.key?(:insert_right)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # Deletes a column from a table.
      class DeleteTableColumnRequest
        include Google::Apis::Core::Hashable
      
        # The table to delete columns from.
        # Corresponds to the JSON property `tableObjectId`
        # @return [String]
        attr_accessor :table_object_id
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_object_id = args[:table_object_id] if args.key?(:table_object_id)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
        end
      end
      
      # Properties and contents of each row in a table.
      class TableRow
        include Google::Apis::Core::Hashable
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `rowHeight`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :row_height
      
        # Properties and contents of each cell.
        # Cells that span multiple columns are represented only once with a
        # column_span greater
        # than 1. As a result, the length of this collection does not always match
        # the number of columns of the entire table.
        # Corresponds to the JSON property `tableCells`
        # @return [Array<Google::Apis::SlidesV1::TableCell>]
        attr_accessor :table_cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_height = args[:row_height] if args.key?(:row_height)
          @table_cells = args[:table_cells] if args.key?(:table_cells)
        end
      end
      
      # AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ]
      # to transform source coordinates (x,y) into destination coordinates (x', y')
      # according to:
      # x'  x  =   shear_y  scale_y  translate_y
      # 1  [ 1 ]
      # After transformation,
      # x' = scale_x * x + shear_x * y + translate_x;
      # y' = scale_y * y + shear_y * x + translate_y;
      # This message is therefore composed of these six matrix elements.
      class AffineTransform
        include Google::Apis::Core::Hashable
      
        # The units for translate elements.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The Y coordinate shearing element.
        # Corresponds to the JSON property `shearY`
        # @return [Float]
        attr_accessor :shear_y
      
        # The X coordinate translation element.
        # Corresponds to the JSON property `translateX`
        # @return [Float]
        attr_accessor :translate_x
      
        # The X coordinate shearing element.
        # Corresponds to the JSON property `shearX`
        # @return [Float]
        attr_accessor :shear_x
      
        # The Y coordinate scaling element.
        # Corresponds to the JSON property `scaleY`
        # @return [Float]
        attr_accessor :scale_y
      
        # The X coordinate scaling element.
        # Corresponds to the JSON property `scaleX`
        # @return [Float]
        attr_accessor :scale_x
      
        # The Y coordinate translation element.
        # Corresponds to the JSON property `translateY`
        # @return [Float]
        attr_accessor :translate_y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @shear_y = args[:shear_y] if args.key?(:shear_y)
          @translate_x = args[:translate_x] if args.key?(:translate_x)
          @shear_x = args[:shear_x] if args.key?(:shear_x)
          @scale_y = args[:scale_y] if args.key?(:scale_y)
          @scale_x = args[:scale_x] if args.key?(:scale_x)
          @translate_y = args[:translate_y] if args.key?(:translate_y)
        end
      end
      
      # Creates a new shape.
      class CreateShapeRequest
        include Google::Apis::Core::Hashable
      
        # A user-supplied object ID.
        # If you specify an ID, it must be unique among all pages and page elements
        # in the presentation. The ID must start with an alphanumeric character or an
        # underscore (matches regex `[a-zA-Z0-9_]`); remaining characters
        # may include those as well as a hyphen or colon (matches regex
        # `[a-zA-Z0-9_-:]`).
        # The length of the ID must not be less than 5 or greater than 50.
        # If empty, a unique identifier will be generated.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The shape type.
        # Corresponds to the JSON property `shapeType`
        # @return [String]
        attr_accessor :shape_type
      
        # Common properties for a page element.
        # Note: When you initially create a
        # PageElement, the API may modify
        # the values of both `size` and `transform`, but the
        # visual size will be unchanged.
        # Corresponds to the JSON property `elementProperties`
        # @return [Google::Apis::SlidesV1::PageElementProperties]
        attr_accessor :element_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @shape_type = args[:shape_type] if args.key?(:shape_type)
          @element_properties = args[:element_properties] if args.key?(:element_properties)
        end
      end
      
      # The shape background fill.
      class ShapeBackgroundFill
        include Google::Apis::Core::Hashable
      
        # The background fill property state.
        # Updating the the fill on a shape will implicitly update this field to
        # `RENDERED`, unless another value is specified in the same request. To
        # have no fill on a shape, set this field to `NOT_RENDERED`. In this case,
        # any other fill fields set in the same request will be ignored.
        # Corresponds to the JSON property `propertyState`
        # @return [String]
        attr_accessor :property_state
      
        # A solid color fill. The page or page element is filled entirely with the
        # specified color value.
        # If any field is unset, its value may be inherited from a parent placeholder
        # if it exists.
        # Corresponds to the JSON property `solidFill`
        # @return [Google::Apis::SlidesV1::SolidFill]
        attr_accessor :solid_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_state = args[:property_state] if args.key?(:property_state)
          @solid_fill = args[:solid_fill] if args.key?(:solid_fill)
        end
      end
      
      # A PageElement kind representing a
      # line, curved connector, or bent connector.
      class Line
        include Google::Apis::Core::Hashable
      
        # The properties of the Line.
        # When unset, these fields default to values that match the appearance of
        # new lines created in the Slides editor.
        # Corresponds to the JSON property `lineProperties`
        # @return [Google::Apis::SlidesV1::LineProperties]
        attr_accessor :line_properties
      
        # The type of the line.
        # Corresponds to the JSON property `lineType`
        # @return [String]
        attr_accessor :line_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_properties = args[:line_properties] if args.key?(:line_properties)
          @line_type = args[:line_type] if args.key?(:line_type)
        end
      end
      
      # The properties of the SheetsChart.
      class SheetsChartProperties
        include Google::Apis::Core::Hashable
      
        # The properties of the Image.
        # Corresponds to the JSON property `chartImageProperties`
        # @return [Google::Apis::SlidesV1::ImageProperties]
        attr_accessor :chart_image_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_image_properties = args[:chart_image_properties] if args.key?(:chart_image_properties)
        end
      end
      
      # A TextElement kind that represents auto text.
      class AutoText
        include Google::Apis::Core::Hashable
      
        # Represents the styling that can be applied to a TextRun.
        # If this text is contained in a shape with a parent placeholder, then these
        # text styles may be
        # inherited from the parent. Which text styles are inherited depend on the
        # nesting level of lists:
        # * A text run in a paragraph that is not in a list will inherit its text style
        # from the the newline character in the paragraph at the 0 nesting level of
        # the list inside the parent placeholder.
        # * A text run in a paragraph that is in a list will inherit its text style
        # from the newline character in the paragraph at its corresponding nesting
        # level of the list inside the parent placeholder.
        # Inherited text styles are represented as unset fields in this message. If
        # text is contained in a shape without a parent placeholder, unsetting these
        # fields will revert the style to a value matching the defaults in the Slides
        # editor.
        # Corresponds to the JSON property `style`
        # @return [Google::Apis::SlidesV1::TextStyle]
        attr_accessor :style
      
        # The type of this auto text.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @style = args[:style] if args.key?(:style)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A TextElement describes the content of a range of indices in the text content
      # of a Shape or TableCell.
      class TextElement
        include Google::Apis::Core::Hashable
      
        # The zero-based end index of this text element, exclusive, in Unicode code
        # units.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # A TextElement kind that represents a run of text that all has the same
        # styling.
        # Corresponds to the JSON property `textRun`
        # @return [Google::Apis::SlidesV1::TextRun]
        attr_accessor :text_run
      
        # The zero-based start index of this text element, in Unicode code units.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # A TextElement kind that represents the beginning of a new paragraph.
        # Corresponds to the JSON property `paragraphMarker`
        # @return [Google::Apis::SlidesV1::ParagraphMarker]
        attr_accessor :paragraph_marker
      
        # A TextElement kind that represents auto text.
        # Corresponds to the JSON property `autoText`
        # @return [Google::Apis::SlidesV1::AutoText]
        attr_accessor :auto_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @text_run = args[:text_run] if args.key?(:text_run)
          @start_index = args[:start_index] if args.key?(:start_index)
          @paragraph_marker = args[:paragraph_marker] if args.key?(:paragraph_marker)
          @auto_text = args[:auto_text] if args.key?(:auto_text)
        end
      end
      
      # Updates the position of slides in the presentation.
      class UpdateSlidesPositionRequest
        include Google::Apis::Core::Hashable
      
        # The index where the slides should be inserted, based on the slide
        # arrangement before the move takes place. Must be between zero and the
        # number of slides in the presentation, inclusive.
        # Corresponds to the JSON property `insertionIndex`
        # @return [Fixnum]
        attr_accessor :insertion_index
      
        # The IDs of the slides in the presentation that should be moved.
        # The slides in this list must be in existing presentation order, without
        # duplicates.
        # Corresponds to the JSON property `slideObjectIds`
        # @return [Array<String>]
        attr_accessor :slide_object_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insertion_index = args[:insertion_index] if args.key?(:insertion_index)
          @slide_object_ids = args[:slide_object_ids] if args.key?(:slide_object_ids)
        end
      end
      
      # Replaces all instances of text matching a criteria with replace text.
      class ReplaceAllTextRequest
        include Google::Apis::Core::Hashable
      
        # A criteria that matches a specific string of text in a shape or table.
        # Corresponds to the JSON property `containsText`
        # @return [Google::Apis::SlidesV1::SubstringMatchCriteria]
        attr_accessor :contains_text
      
        # The text that will replace the matched text.
        # Corresponds to the JSON property `replaceText`
        # @return [String]
        attr_accessor :replace_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contains_text = args[:contains_text] if args.key?(:contains_text)
          @replace_text = args[:replace_text] if args.key?(:replace_text)
        end
      end
      
      # The properties of a Shape.
      # If the shape is a placeholder shape as determined by the
      # placeholder field, then these
      # properties may be inherited from a parent placeholder shape.
      # Determining the rendered value of the property depends on the corresponding
      # property_state field value.
      class ShapeProperties
        include Google::Apis::Core::Hashable
      
        # The outline of a PageElement.
        # If these fields are unset, they may be inherited from a parent placeholder
        # if it exists. If there is no parent, the fields will default to the value
        # used for new page elements created in the Slides editor, which may depend on
        # the page element kind.
        # Corresponds to the JSON property `outline`
        # @return [Google::Apis::SlidesV1::Outline]
        attr_accessor :outline
      
        # The shape background fill.
        # Corresponds to the JSON property `shapeBackgroundFill`
        # @return [Google::Apis::SlidesV1::ShapeBackgroundFill]
        attr_accessor :shape_background_fill
      
        # The shadow properties of a page element.
        # If these fields are unset, they may be inherited from a parent placeholder
        # if it exists. If there is no parent, the fields will default to the value
        # used for new page elements created in the Slides editor, which may depend on
        # the page element kind.
        # Corresponds to the JSON property `shadow`
        # @return [Google::Apis::SlidesV1::Shadow]
        attr_accessor :shadow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outline = args[:outline] if args.key?(:outline)
          @shape_background_fill = args[:shape_background_fill] if args.key?(:shape_background_fill)
          @shadow = args[:shadow] if args.key?(:shadow)
        end
      end
      
      # The result of creating a shape.
      class CreateShapeResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created shape.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # The result of creating a slide.
      class CreateSlideResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created slide.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # Update the properties of an Image.
      class UpdateImagePropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the image the updates are applied to.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The fields that should be updated.
        # At least one field must be specified. The root `imageProperties` is
        # implied and should not be specified. A single `"*"` can be used as
        # short-hand for listing every field.
        # For example to update the image outline color, set `fields` to
        # `"outline.outlineFill.solidFill.color"`.
        # To reset a property to its default value, include its field name in the
        # field mask but leave the field itself unset.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # The properties of the Image.
        # Corresponds to the JSON property `imageProperties`
        # @return [Google::Apis::SlidesV1::ImageProperties]
        attr_accessor :image_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @fields = args[:fields] if args.key?(:fields)
          @image_properties = args[:image_properties] if args.key?(:image_properties)
        end
      end
      
      # Creates a video.
      class CreateVideoRequest
        include Google::Apis::Core::Hashable
      
        # A user-supplied object ID.
        # If you specify an ID, it must be unique among all pages and page elements
        # in the presentation. The ID must start with an alphanumeric character or an
        # underscore (matches regex `[a-zA-Z0-9_]`); remaining characters
        # may include those as well as a hyphen or colon (matches regex
        # `[a-zA-Z0-9_-:]`).
        # The length of the ID must not be less than 5 or greater than 50.
        # If you don't specify an ID, a unique one is generated.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The video source.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Common properties for a page element.
        # Note: When you initially create a
        # PageElement, the API may modify
        # the values of both `size` and `transform`, but the
        # visual size will be unchanged.
        # Corresponds to the JSON property `elementProperties`
        # @return [Google::Apis::SlidesV1::PageElementProperties]
        attr_accessor :element_properties
      
        # The video source's unique identifier for this video.
        # e.g. For YouTube video https://www.youtube.com/watch?v=7U3axjORYZ0,
        # the ID is 7U3axjORYZ0.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @source = args[:source] if args.key?(:source)
          @element_properties = args[:element_properties] if args.key?(:element_properties)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Creates a new table.
      class CreateTableRequest
        include Google::Apis::Core::Hashable
      
        # Number of columns in the table.
        # Corresponds to the JSON property `columns`
        # @return [Fixnum]
        attr_accessor :columns
      
        # A user-supplied object ID.
        # If you specify an ID, it must be unique among all pages and page elements
        # in the presentation. The ID must start with an alphanumeric character or an
        # underscore (matches regex `[a-zA-Z0-9_]`); remaining characters
        # may include those as well as a hyphen or colon (matches regex
        # `[a-zA-Z0-9_-:]`).
        # The length of the ID must not be less than 5 or greater than 50.
        # If you don't specify an ID, a unique one is generated.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Number of rows in the table.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # Common properties for a page element.
        # Note: When you initially create a
        # PageElement, the API may modify
        # the values of both `size` and `transform`, but the
        # visual size will be unchanged.
        # Corresponds to the JSON property `elementProperties`
        # @return [Google::Apis::SlidesV1::PageElementProperties]
        attr_accessor :element_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @rows = args[:rows] if args.key?(:rows)
          @element_properties = args[:element_properties] if args.key?(:element_properties)
        end
      end
      
      # A color that can either be fully opaque or fully transparent.
      class OptionalColor
        include Google::Apis::Core::Hashable
      
        # A themeable solid color value.
        # Corresponds to the JSON property `opaqueColor`
        # @return [Google::Apis::SlidesV1::OpaqueColor]
        attr_accessor :opaque_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @opaque_color = args[:opaque_color] if args.key?(:opaque_color)
        end
      end
      
      # A TextElement kind that represents a run of text that all has the same
      # styling.
      class TextRun
        include Google::Apis::Core::Hashable
      
        # Represents the styling that can be applied to a TextRun.
        # If this text is contained in a shape with a parent placeholder, then these
        # text styles may be
        # inherited from the parent. Which text styles are inherited depend on the
        # nesting level of lists:
        # * A text run in a paragraph that is not in a list will inherit its text style
        # from the the newline character in the paragraph at the 0 nesting level of
        # the list inside the parent placeholder.
        # * A text run in a paragraph that is in a list will inherit its text style
        # from the newline character in the paragraph at its corresponding nesting
        # level of the list inside the parent placeholder.
        # Inherited text styles are represented as unset fields in this message. If
        # text is contained in a shape without a parent placeholder, unsetting these
        # fields will revert the style to a value matching the defaults in the Slides
        # editor.
        # Corresponds to the JSON property `style`
        # @return [Google::Apis::SlidesV1::TextStyle]
        attr_accessor :style
      
        # The text of this run.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @style = args[:style] if args.key?(:style)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # A PageElement kind representing a
      # generic shape that does not have a more specific classification.
      class Shape
        include Google::Apis::Core::Hashable
      
        # The general text content. The text must reside in a compatible shape (e.g.
        # text box or rectangle) or a table cell in a page.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::SlidesV1::TextContent]
        attr_accessor :text
      
        # The properties of a Shape.
        # If the shape is a placeholder shape as determined by the
        # placeholder field, then these
        # properties may be inherited from a parent placeholder shape.
        # Determining the rendered value of the property depends on the corresponding
        # property_state field value.
        # Corresponds to the JSON property `shapeProperties`
        # @return [Google::Apis::SlidesV1::ShapeProperties]
        attr_accessor :shape_properties
      
        # The type of the shape.
        # Corresponds to the JSON property `shapeType`
        # @return [String]
        attr_accessor :shape_type
      
        # The placeholder information that uniquely identifies a placeholder shape.
        # Corresponds to the JSON property `placeholder`
        # @return [Google::Apis::SlidesV1::Placeholder]
        attr_accessor :placeholder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @shape_properties = args[:shape_properties] if args.key?(:shape_properties)
          @shape_type = args[:shape_type] if args.key?(:shape_type)
          @placeholder = args[:placeholder] if args.key?(:placeholder)
        end
      end
      
      # Response message from a batch update.
      class BatchUpdatePresentationResponse
        include Google::Apis::Core::Hashable
      
        # The presentation the updates were applied to.
        # Corresponds to the JSON property `presentationId`
        # @return [String]
        attr_accessor :presentation_id
      
        # The reply of the updates.  This maps 1:1 with the updates, although
        # replies to some requests may be empty.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::SlidesV1::Response>]
        attr_accessor :replies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @presentation_id = args[:presentation_id] if args.key?(:presentation_id)
          @replies = args[:replies] if args.key?(:replies)
        end
      end
      
      # The properties of the Image.
      class ImageProperties
        include Google::Apis::Core::Hashable
      
        # The crop properties of an object enclosed in a container. For example, an
        # Image.
        # The crop properties is represented by the offsets of four edges which define
        # a crop rectangle. The offsets are measured in percentage from the
        # corresponding edges of the object's original bounding rectangle towards
        # inside, relative to the object's original dimensions.
        # - If the offset is in the interval (0, 1), the corresponding edge of crop
        # rectangle is positioned inside of the object's original bounding rectangle.
        # - If the offset is negative or greater than 1, the corresponding edge of crop
        # rectangle is positioned outside of the object's original bounding rectangle.
        # - If the left edge of the crop rectangle is on the right side of its right
        # edge, the object will be flipped horizontally.
        # - If the top edge of the crop rectangle is below its bottom edge, the object
        # will be flipped vertically.
        # - If all offsets and rotation angle is 0, the object is not cropped.
        # After cropping, the content in the crop rectangle will be stretched to fit
        # its container.
        # Corresponds to the JSON property `cropProperties`
        # @return [Google::Apis::SlidesV1::CropProperties]
        attr_accessor :crop_properties
      
        # The outline of a PageElement.
        # If these fields are unset, they may be inherited from a parent placeholder
        # if it exists. If there is no parent, the fields will default to the value
        # used for new page elements created in the Slides editor, which may depend on
        # the page element kind.
        # Corresponds to the JSON property `outline`
        # @return [Google::Apis::SlidesV1::Outline]
        attr_accessor :outline
      
        # The shadow properties of a page element.
        # If these fields are unset, they may be inherited from a parent placeholder
        # if it exists. If there is no parent, the fields will default to the value
        # used for new page elements created in the Slides editor, which may depend on
        # the page element kind.
        # Corresponds to the JSON property `shadow`
        # @return [Google::Apis::SlidesV1::Shadow]
        attr_accessor :shadow
      
        # The transparency effect of the image. The value should be in the interval
        # [0.0, 1.0], where 0 means no effect and 1 means completely transparent.
        # This property is read-only.
        # Corresponds to the JSON property `transparency`
        # @return [Float]
        attr_accessor :transparency
      
        # The contrast effect of the image. The value should be in the interval
        # [-1.0, 1.0], where 0 means no effect. This property is read-only.
        # Corresponds to the JSON property `contrast`
        # @return [Float]
        attr_accessor :contrast
      
        # A recolor effect applied on an image.
        # Corresponds to the JSON property `recolor`
        # @return [Google::Apis::SlidesV1::Recolor]
        attr_accessor :recolor
      
        # The brightness effect of the image. The value should be in the interval
        # [-1.0, 1.0], where 0 means no effect. This property is read-only.
        # Corresponds to the JSON property `brightness`
        # @return [Float]
        attr_accessor :brightness
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crop_properties = args[:crop_properties] if args.key?(:crop_properties)
          @outline = args[:outline] if args.key?(:outline)
          @shadow = args[:shadow] if args.key?(:shadow)
          @transparency = args[:transparency] if args.key?(:transparency)
          @contrast = args[:contrast] if args.key?(:contrast)
          @recolor = args[:recolor] if args.key?(:recolor)
          @brightness = args[:brightness] if args.key?(:brightness)
        end
      end
      
      # A PageElement kind representing a
      # joined collection of PageElements.
      class Group
        include Google::Apis::Core::Hashable
      
        # The collection of elements in the group. The minimum size of a group is 2.
        # Corresponds to the JSON property `children`
        # @return [Array<Google::Apis::SlidesV1::PageElement>]
        attr_accessor :children
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @children = args[:children] if args.key?(:children)
        end
      end
      
      # The outline of a PageElement.
      # If these fields are unset, they may be inherited from a parent placeholder
      # if it exists. If there is no parent, the fields will default to the value
      # used for new page elements created in the Slides editor, which may depend on
      # the page element kind.
      class Outline
        include Google::Apis::Core::Hashable
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `weight`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :weight
      
        # The dash style of the outline.
        # Corresponds to the JSON property `dashStyle`
        # @return [String]
        attr_accessor :dash_style
      
        # The outline property state.
        # Updating the the outline on a page element will implicitly update this
        # field to`RENDERED`, unless another value is specified in the same request.
        # To have no outline on a page element, set this field to `NOT_RENDERED`. In
        # this case, any other outline fields set in the same request will be
        # ignored.
        # Corresponds to the JSON property `propertyState`
        # @return [String]
        attr_accessor :property_state
      
        # The fill of the outline.
        # Corresponds to the JSON property `outlineFill`
        # @return [Google::Apis::SlidesV1::OutlineFill]
        attr_accessor :outline_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weight = args[:weight] if args.key?(:weight)
          @dash_style = args[:dash_style] if args.key?(:dash_style)
          @property_state = args[:property_state] if args.key?(:property_state)
          @outline_fill = args[:outline_fill] if args.key?(:outline_fill)
        end
      end
      
      # Properties and contents of each table cell.
      class TableCell
        include Google::Apis::Core::Hashable
      
        # The general text content. The text must reside in a compatible shape (e.g.
        # text box or rectangle) or a table cell in a page.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::SlidesV1::TextContent]
        attr_accessor :text
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :location
      
        # Row span of the cell.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        # The properties of the TableCell.
        # Corresponds to the JSON property `tableCellProperties`
        # @return [Google::Apis::SlidesV1::TableCellProperties]
        attr_accessor :table_cell_properties
      
        # Column span of the cell.
        # Corresponds to the JSON property `columnSpan`
        # @return [Fixnum]
        attr_accessor :column_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @location = args[:location] if args.key?(:location)
          @row_span = args[:row_span] if args.key?(:row_span)
          @table_cell_properties = args[:table_cell_properties] if args.key?(:table_cell_properties)
          @column_span = args[:column_span] if args.key?(:column_span)
        end
      end
      
      # The result of replacing shapes with an image.
      class ReplaceAllShapesWithImageResponse
        include Google::Apis::Core::Hashable
      
        # The number of shapes replaced with images.
        # Corresponds to the JSON property `occurrencesChanged`
        # @return [Fixnum]
        attr_accessor :occurrences_changed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @occurrences_changed = args[:occurrences_changed] if args.key?(:occurrences_changed)
        end
      end
      
      # Creates a new slide.
      class CreateSlideRequest
        include Google::Apis::Core::Hashable
      
        # A user-supplied object ID.
        # If you specify an ID, it must be unique among all pages and page elements
        # in the presentation. The ID must start with an alphanumeric character or an
        # underscore (matches regex `[a-zA-Z0-9_]`); remaining characters
        # may include those as well as a hyphen or colon (matches regex
        # `[a-zA-Z0-9_-:]`).
        # The length of the ID must not be less than 5 or greater than 50.
        # If you don't specify an ID, a unique one is generated.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The optional zero-based index indicating where to insert the slides.
        # If you don't specify an index, the new slide is created at the end.
        # Corresponds to the JSON property `insertionIndex`
        # @return [Fixnum]
        attr_accessor :insertion_index
      
        # Slide layout reference. This may reference either:
        # - A predefined layout, or
        # - One of the layouts in the presentation.
        # Corresponds to the JSON property `slideLayoutReference`
        # @return [Google::Apis::SlidesV1::LayoutReference]
        attr_accessor :slide_layout_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @insertion_index = args[:insertion_index] if args.key?(:insertion_index)
          @slide_layout_reference = args[:slide_layout_reference] if args.key?(:slide_layout_reference)
        end
      end
      
      # The properties of the TableCell.
      class TableCellProperties
        include Google::Apis::Core::Hashable
      
        # The table cell background fill.
        # Corresponds to the JSON property `tableCellBackgroundFill`
        # @return [Google::Apis::SlidesV1::TableCellBackgroundFill]
        attr_accessor :table_cell_background_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_cell_background_fill = args[:table_cell_background_fill] if args.key?(:table_cell_background_fill)
        end
      end
      
      # The result of creating a table.
      class CreateTableResponse
        include Google::Apis::Core::Hashable
      
        # The object ID of the created table.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # A width and height.
      class Size
        include Google::Apis::Core::Hashable
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `width`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :width
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `height`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :height
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @width = args[:width] if args.key?(:width)
          @height = args[:height] if args.key?(:height)
        end
      end
      
      # The palette of predefined colors for a page.
      class ColorScheme
        include Google::Apis::Core::Hashable
      
        # The ThemeColorType and corresponding concrete color pairs.
        # Corresponds to the JSON property `colors`
        # @return [Array<Google::Apis::SlidesV1::ThemeColorPair>]
        attr_accessor :colors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @colors = args[:colors] if args.key?(:colors)
        end
      end
      
      # A TextElement kind that represents the beginning of a new paragraph.
      class ParagraphMarker
        include Google::Apis::Core::Hashable
      
        # Styles that apply to a whole paragraph.
        # If this text is contained in a shape with a parent placeholder, then these
        # paragraph styles may be
        # inherited from the parent. Which paragraph styles are inherited depend on the
        # nesting level of lists:
        # * A paragraph not in a list will inherit its paragraph style from the
        # paragraph at the 0 nesting level of the list inside the parent placeholder.
        # * A paragraph in a list will inherit its paragraph style from the paragraph
        # at its corresponding nesting level of the list inside the parent
        # placeholder.
        # Inherited paragraph styles are represented as unset fields in this message.
        # Corresponds to the JSON property `style`
        # @return [Google::Apis::SlidesV1::ParagraphStyle]
        attr_accessor :style
      
        # Describes the bullet of a paragraph.
        # Corresponds to the JSON property `bullet`
        # @return [Google::Apis::SlidesV1::Bullet]
        attr_accessor :bullet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @style = args[:style] if args.key?(:style)
          @bullet = args[:bullet] if args.key?(:bullet)
        end
      end
      
      # Creates bullets for all of the paragraphs that overlap with the given
      # text index range.
      # The nesting level of each paragraph will be determined by counting leading
      # tabs in front of each paragraph. To avoid excess space between the bullet and
      # the corresponding paragraph, these leading tabs are removed by this request.
      # This may change the indices of parts of the text.
      # If the paragraph immediately before paragraphs being updated is in a list
      # with a matching preset, the paragraphs being updated are added to that
      # preceding list.
      class CreateParagraphBulletsRequest
        include Google::Apis::Core::Hashable
      
        # The object ID of the shape or table containing the text to add bullets to.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Specifies a contiguous range of an indexed collection, such as characters in
        # text.
        # Corresponds to the JSON property `textRange`
        # @return [Google::Apis::SlidesV1::Range]
        attr_accessor :text_range
      
        # The kinds of bullet glyphs to be used. Defaults to the
        # `BULLET_DISC_CIRCLE_SQUARE` preset.
        # Corresponds to the JSON property `bulletPreset`
        # @return [String]
        attr_accessor :bullet_preset
      
        # A location of a single table cell within a table.
        # Corresponds to the JSON property `cellLocation`
        # @return [Google::Apis::SlidesV1::TableCellLocation]
        attr_accessor :cell_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @text_range = args[:text_range] if args.key?(:text_range)
          @bullet_preset = args[:bullet_preset] if args.key?(:bullet_preset)
          @cell_location = args[:cell_location] if args.key?(:cell_location)
        end
      end
      
      # A criteria that matches a specific string of text in a shape or table.
      class SubstringMatchCriteria
        include Google::Apis::Core::Hashable
      
        # The text to search for in the shape or table.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Indicates whether the search should respect case:
        # - `True`: the search is case sensitive.
        # - `False`: the search is case insensitive.
        # Corresponds to the JSON property `matchCase`
        # @return [Boolean]
        attr_accessor :match_case
        alias_method :match_case?, :match_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @match_case = args[:match_case] if args.key?(:match_case)
        end
      end
      
      # Specifies a contiguous range of an indexed collection, such as characters in
      # text.
      class Range
        include Google::Apis::Core::Hashable
      
        # The optional zero-based index of the end of the collection.
        # Required for `SPECIFIC_RANGE` delete mode.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # The optional zero-based index of the beginning of the collection.
        # Required for `SPECIFIC_RANGE` and `FROM_START_INDEX` ranges.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The type of range.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A PageElement kind representing
      # word art.
      class WordArt
        include Google::Apis::Core::Hashable
      
        # The text rendered as word art.
        # Corresponds to the JSON property `renderedText`
        # @return [String]
        attr_accessor :rendered_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rendered_text = args[:rendered_text] if args.key?(:rendered_text)
        end
      end
      
      # Properties of each column in a table.
      class TableColumnProperties
        include Google::Apis::Core::Hashable
      
        # A magnitude in a single direction in the specified units.
        # Corresponds to the JSON property `columnWidth`
        # @return [Google::Apis::SlidesV1::Dimension]
        attr_accessor :column_width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_width = args[:column_width] if args.key?(:column_width)
        end
      end
      
      # A single kind of update to apply to a presentation.
      class Request
        include Google::Apis::Core::Hashable
      
        # Creates bullets for all of the paragraphs that overlap with the given
        # text index range.
        # The nesting level of each paragraph will be determined by counting leading
        # tabs in front of each paragraph. To avoid excess space between the bullet and
        # the corresponding paragraph, these leading tabs are removed by this request.
        # This may change the indices of parts of the text.
        # If the paragraph immediately before paragraphs being updated is in a list
        # with a matching preset, the paragraphs being updated are added to that
        # preceding list.
        # Corresponds to the JSON property `createParagraphBullets`
        # @return [Google::Apis::SlidesV1::CreateParagraphBulletsRequest]
        attr_accessor :create_paragraph_bullets
      
        # Inserts columns into a table.
        # Other columns in the table will be resized to fit the new column.
        # Corresponds to the JSON property `insertTableColumns`
        # @return [Google::Apis::SlidesV1::InsertTableColumnsRequest]
        attr_accessor :insert_table_columns
      
        # Creates a new table.
        # Corresponds to the JSON property `createTable`
        # @return [Google::Apis::SlidesV1::CreateTableRequest]
        attr_accessor :create_table
      
        # Deletes text from a shape or a table cell.
        # Corresponds to the JSON property `deleteText`
        # @return [Google::Apis::SlidesV1::DeleteTextRequest]
        attr_accessor :delete_text
      
        # Replaces all instances of text matching a criteria with replace text.
        # Corresponds to the JSON property `replaceAllText`
        # @return [Google::Apis::SlidesV1::ReplaceAllTextRequest]
        attr_accessor :replace_all_text
      
        # Update the properties of a Video.
        # Corresponds to the JSON property `updateVideoProperties`
        # @return [Google::Apis::SlidesV1::UpdateVideoPropertiesRequest]
        attr_accessor :update_video_properties
      
        # Inserts text into a shape or a table cell.
        # Corresponds to the JSON property `insertText`
        # @return [Google::Apis::SlidesV1::InsertTextRequest]
        attr_accessor :insert_text
      
        # Deletes a row from a table.
        # Corresponds to the JSON property `deleteTableRow`
        # @return [Google::Apis::SlidesV1::DeleteTableRowRequest]
        attr_accessor :delete_table_row
      
        # Update the styling of text in a Shape or
        # Table.
        # Corresponds to the JSON property `updateTextStyle`
        # @return [Google::Apis::SlidesV1::UpdateTextStyleRequest]
        attr_accessor :update_text_style
      
        # Inserts rows into a table.
        # Corresponds to the JSON property `insertTableRows`
        # @return [Google::Apis::SlidesV1::InsertTableRowsRequest]
        attr_accessor :insert_table_rows
      
        # Update the properties of a TableCell.
        # Corresponds to the JSON property `updateTableCellProperties`
        # @return [Google::Apis::SlidesV1::UpdateTableCellPropertiesRequest]
        attr_accessor :update_table_cell_properties
      
        # Refreshes an embedded Google Sheets chart by replacing it with the latest
        # version of the chart from Google Sheets.
        # NOTE: Refreshing charts requires  at least one of the spreadsheets.readonly,
        # spreadsheets, drive.readonly, or drive OAuth scopes.
        # Corresponds to the JSON property `refreshSheetsChart`
        # @return [Google::Apis::SlidesV1::RefreshSheetsChartRequest]
        attr_accessor :refresh_sheets_chart
      
        # Creates an embedded Google Sheets chart.
        # NOTE: Chart creation requires  at least one of the spreadsheets.readonly,
        # spreadsheets, drive.readonly, or drive OAuth scopes.
        # Corresponds to the JSON property `createSheetsChart`
        # @return [Google::Apis::SlidesV1::CreateSheetsChartRequest]
        attr_accessor :create_sheets_chart
      
        # Updates the properties of a Page.
        # Corresponds to the JSON property `updatePageProperties`
        # @return [Google::Apis::SlidesV1::UpdatePagePropertiesRequest]
        attr_accessor :update_page_properties
      
        # Update the properties of a Shape.
        # Corresponds to the JSON property `updateShapeProperties`
        # @return [Google::Apis::SlidesV1::UpdateShapePropertiesRequest]
        attr_accessor :update_shape_properties
      
        # Creates a new slide.
        # Corresponds to the JSON property `createSlide`
        # @return [Google::Apis::SlidesV1::CreateSlideRequest]
        attr_accessor :create_slide
      
        # Deletes an object, either pages or
        # page elements, from the
        # presentation.
        # Corresponds to the JSON property `deleteObject`
        # @return [Google::Apis::SlidesV1::DeleteObjectRequest]
        attr_accessor :delete_object
      
        # Creates a new shape.
        # Corresponds to the JSON property `createShape`
        # @return [Google::Apis::SlidesV1::CreateShapeRequest]
        attr_accessor :create_shape
      
        # Updates the transform of a page element.
        # Corresponds to the JSON property `updatePageElementTransform`
        # @return [Google::Apis::SlidesV1::UpdatePageElementTransformRequest]
        attr_accessor :update_page_element_transform
      
        # Updates the position of slides in the presentation.
        # Corresponds to the JSON property `updateSlidesPosition`
        # @return [Google::Apis::SlidesV1::UpdateSlidesPositionRequest]
        attr_accessor :update_slides_position
      
        # Replaces all shapes that match the given criteria with the provided image.
        # Corresponds to the JSON property `replaceAllShapesWithImage`
        # @return [Google::Apis::SlidesV1::ReplaceAllShapesWithImageRequest]
        attr_accessor :replace_all_shapes_with_image
      
        # Update the properties of an Image.
        # Corresponds to the JSON property `updateImageProperties`
        # @return [Google::Apis::SlidesV1::UpdateImagePropertiesRequest]
        attr_accessor :update_image_properties
      
        # Creates a video.
        # Corresponds to the JSON property `createVideo`
        # @return [Google::Apis::SlidesV1::CreateVideoRequest]
        attr_accessor :create_video
      
        # Creates an image.
        # Corresponds to the JSON property `createImage`
        # @return [Google::Apis::SlidesV1::CreateImageRequest]
        attr_accessor :create_image
      
        # Duplicates a slide or page element.
        # When duplicating a slide, the duplicate slide will be created immediately
        # following the specified slide. When duplicating a page element, the duplicate
        # will be placed on the same page at the same position as the original.
        # Corresponds to the JSON property `duplicateObject`
        # @return [Google::Apis::SlidesV1::DuplicateObjectRequest]
        attr_accessor :duplicate_object
      
        # Deletes a column from a table.
        # Corresponds to the JSON property `deleteTableColumn`
        # @return [Google::Apis::SlidesV1::DeleteTableColumnRequest]
        attr_accessor :delete_table_column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_paragraph_bullets = args[:create_paragraph_bullets] if args.key?(:create_paragraph_bullets)
          @insert_table_columns = args[:insert_table_columns] if args.key?(:insert_table_columns)
          @create_table = args[:create_table] if args.key?(:create_table)
          @delete_text = args[:delete_text] if args.key?(:delete_text)
          @replace_all_text = args[:replace_all_text] if args.key?(:replace_all_text)
          @update_video_properties = args[:update_video_properties] if args.key?(:update_video_properties)
          @insert_text = args[:insert_text] if args.key?(:insert_text)
          @delete_table_row = args[:delete_table_row] if args.key?(:delete_table_row)
          @update_text_style = args[:update_text_style] if args.key?(:update_text_style)
          @insert_table_rows = args[:insert_table_rows] if args.key?(:insert_table_rows)
          @update_table_cell_properties = args[:update_table_cell_properties] if args.key?(:update_table_cell_properties)
          @refresh_sheets_chart = args[:refresh_sheets_chart] if args.key?(:refresh_sheets_chart)
          @create_sheets_chart = args[:create_sheets_chart] if args.key?(:create_sheets_chart)
          @update_page_properties = args[:update_page_properties] if args.key?(:update_page_properties)
          @update_shape_properties = args[:update_shape_properties] if args.key?(:update_shape_properties)
          @create_slide = args[:create_slide] if args.key?(:create_slide)
          @delete_object = args[:delete_object] if args.key?(:delete_object)
          @create_shape = args[:create_shape] if args.key?(:create_shape)
          @update_page_element_transform = args[:update_page_element_transform] if args.key?(:update_page_element_transform)
          @update_slides_position = args[:update_slides_position] if args.key?(:update_slides_position)
          @replace_all_shapes_with_image = args[:replace_all_shapes_with_image] if args.key?(:replace_all_shapes_with_image)
          @update_image_properties = args[:update_image_properties] if args.key?(:update_image_properties)
          @create_video = args[:create_video] if args.key?(:create_video)
          @create_image = args[:create_image] if args.key?(:create_image)
          @duplicate_object = args[:duplicate_object] if args.key?(:duplicate_object)
          @delete_table_column = args[:delete_table_column] if args.key?(:delete_table_column)
        end
      end
      
      # The fill of the line.
      class LineFill
        include Google::Apis::Core::Hashable
      
        # A solid color fill. The page or page element is filled entirely with the
        # specified color value.
        # If any field is unset, its value may be inherited from a parent placeholder
        # if it exists.
        # Corresponds to the JSON property `solidFill`
        # @return [Google::Apis::SlidesV1::SolidFill]
        attr_accessor :solid_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @solid_fill = args[:solid_fill] if args.key?(:solid_fill)
        end
      end
      
      # The fill of the outline.
      class OutlineFill
        include Google::Apis::Core::Hashable
      
        # A solid color fill. The page or page element is filled entirely with the
        # specified color value.
        # If any field is unset, its value may be inherited from a parent placeholder
        # if it exists.
        # Corresponds to the JSON property `solidFill`
        # @return [Google::Apis::SlidesV1::SolidFill]
        attr_accessor :solid_fill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @solid_fill = args[:solid_fill] if args.key?(:solid_fill)
        end
      end
      
      # Describes the bullet of a paragraph.
      class Bullet
        include Google::Apis::Core::Hashable
      
        # The nesting level of this paragraph in the list.
        # Corresponds to the JSON property `nestingLevel`
        # @return [Fixnum]
        attr_accessor :nesting_level
      
        # The rendered bullet glyph for this paragraph.
        # Corresponds to the JSON property `glyph`
        # @return [String]
        attr_accessor :glyph
      
        # Represents the styling that can be applied to a TextRun.
        # If this text is contained in a shape with a parent placeholder, then these
        # text styles may be
        # inherited from the parent. Which text styles are inherited depend on the
        # nesting level of lists:
        # * A text run in a paragraph that is not in a list will inherit its text style
        # from the the newline character in the paragraph at the 0 nesting level of
        # the list inside the parent placeholder.
        # * A text run in a paragraph that is in a list will inherit its text style
        # from the newline character in the paragraph at its corresponding nesting
        # level of the list inside the parent placeholder.
        # Inherited text styles are represented as unset fields in this message. If
        # text is contained in a shape without a parent placeholder, unsetting these
        # fields will revert the style to a value matching the defaults in the Slides
        # editor.
        # Corresponds to the JSON property `bulletStyle`
        # @return [Google::Apis::SlidesV1::TextStyle]
        attr_accessor :bullet_style
      
        # The ID of the list this paragraph belongs to.
        # Corresponds to the JSON property `listId`
        # @return [String]
        attr_accessor :list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nesting_level = args[:nesting_level] if args.key?(:nesting_level)
          @glyph = args[:glyph] if args.key?(:glyph)
          @bullet_style = args[:bullet_style] if args.key?(:bullet_style)
          @list_id = args[:list_id] if args.key?(:list_id)
        end
      end
    end
  end
end
