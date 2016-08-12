class Reciept

  attr_accessor :total, :sales_tax_total, :imported_tax_total

  def initialize
    @total = 0
    @sales_tax_total = 0
    @imported_tax_total = 0
    @grand_total = 0
  end

  def sales_tax(item_info)
      if item_info.item_type.downcase != "food" || item_info.item_type.downcase != "medical" || item_info.item_type.downcase != "book"
        @sales_tax_total = item_info.cost * 0.10
      end
  end

  def imported_tax(item_info)
      if item_info.imported == true
        item_info.cost = item.cost * 1.05
      end
  end


  def cash_out(shopping_cart)
    shopping_cart.each do |item|
      @sales_tax_total = sales_tax(item)
      @imported_tax_total = imported_tax(item)
      @total += item.cost.to_i
    end
    @grand_total = @total.to_i + @sales_tax_total.to_i + @imported_tax_total.to_i
  end

  def print_reciept(shopping_cart)
    shopping_cart.each do |item|
      puts "1 #{item.name}: #{item.cost}"
    end
    puts "Sales Tax : #{@sales_tax_total}"
    puts "Total : #{@total}"
  end


end
