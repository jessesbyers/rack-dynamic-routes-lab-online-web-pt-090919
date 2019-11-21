class Item
  attr_accessor :name, :price
  @@item = []

  def initialize(name,price)
    @name = name
    @price = price
    @@items << self
  end
end
