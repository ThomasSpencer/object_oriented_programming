class Item

  attr_reader :item_name, :item_type, :imported
  attr_accessor :cost

  def initialize(name, cost, item_type)
    @name = name
    @cost = cost
    @item_type = item_type
    if name.split.include?("imported")
      @imported = true
    else
      @imported = false
    end
  end

  def sales_tax
    if self.item_type.downcase != "food" || self.item_type.downcase != "medical" || self.item_type.downcase != "books"
      self.cost = self.cost * 0.10
    end
  end

  def imported_tax(item)
    if self.imported == true
      import_tax = item.cost * 0.05
    end
  end

end
