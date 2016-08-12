class Item

  attr_reader :name, :item_type, :imported
  attr_accessor :cost

  def initialize(name, cost, item_type)
    @name = name
    @cost = cost
    @item_type = item_type
    if name.downcase.split.include?("imported")
      @imported = true
    else
      @imported = false
    end
  end


end
