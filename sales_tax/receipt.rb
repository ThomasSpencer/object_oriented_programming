class Reciept

  attr_accessor :total, :sales_tax_total, :imported_tax_total

  def initialize
    @total = 0
    @sales_tax_total = 0
    @imported_tax_total = 0
  end

  def cash_out(shopping_cart)
    shopping_cart.each do |item|
      @sales_tax_total = item.sales_tax
      @imported_tax_total = item.import_tax
    end
    @total = item.cost + @sales_tax_total + @imported_tax_total
  end

end
