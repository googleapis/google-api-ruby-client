require 'google/apis/sheets_v4'

class Mapping
  def initialize
    @columns = []
    @primary = nil
  end

  def add_column(name, property: nil, key: nil, getter: nil, setter: nil, hidden: false, primary: false)
    getter_fn = getter if getter
    getter_fn = Proc.new { |obj| obj.send(property) } if property
    getter_fn = Proc.new { |obj| obj[key] } if key
    setter_fn = setter if setter
    setter_fn = Proc.new { |obj, val| obj.send(property + '=') } if property
    setter_fn = Proc.new { |obj, val| obj[key]= val } if key
    @columns.push({
        name: name,
        getter: getter_fn,
        setter: setter_fn,
        hidden: hidden
    })

    if primary
      fail "Only one column can be the primary key" unless @primary.nil?
      @primary = @columns.last
    end
  end

  def to_row(obj)
    @columns.map { |column| column[:accessor].call(obj) }
  end
end

class SheetSyncEngine
  def initialize(mapping, sheet_id: nil)
    @service = Google::Apis::SheetsV4::SheetsService.new
    @sheet_id = sheet_id
    @mapping = mapping
  end

  def credentials=(creds)
    @service.authorization = creds
  end

  def append(items)
    rows = items.map { |item| @mapping.to_row(item) }
    puts rows
  end
end

class Foo
  attr_accessor :prop1
  attr_accessor :prop2

  def initialize(p1, p2)
    @prop1 = p1
    @prop2 = p2
  end
end

mapping = Mapping.new
mapping.add_column('foo', property: :prop1)
mapping.add_column('bar', proc: Proc.new {|o| 'aaa' + o.prop2})
sync = SheetSyncEngine.new(mapping)

items = []
items.push(Foo.new('a', 'b'))
items.push(Foo.new('a1', 'b1'))
items.push(Foo.new('a2', 'b2'))

sync.append(items)