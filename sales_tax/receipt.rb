class Reciept

  attr_accessor :grand_total, :sales_tax_total, :imported_tax_total

  def initialize
    @sales_tax_total = 0.0
    @imported_tax_total = 0.0
    @grand_total = 0.0
  end

  def sales_tax(item_info)
      if item_info.item_type.downcase == "other"
        @sales_tax_total = item_info.cost * 0.10
      end
  end

  def imported_tax(item_info)
      if item_info.imported == true
        item_info.cost = item_info.cost * 1.05
        @imported_tax_total += item_info.cost
      end
  end


  def cash_out(shopping_cart)
    shopping_cart.each do |item|
      @sales_tax_total = sales_tax(item)
      @imported_tax_total = imported_tax(item)
    end
    @grand_total = @sales_tax_total.to_f + @imported_tax_total.to_f
  end

  def print_reciept(shopping_cart)
    shopping_cart.each do |item|
      puts "1 #{item.name}: #{item.cost.round(2)}"
    end
    puts "Sales Tax : #{@sales_tax_total}"
    puts "Total : #{@grand_total.round(2)}"
  end


end
