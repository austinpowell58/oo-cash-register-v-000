
class CashRegister
  require "pry"
  attr_accessor :discount, :total
  
  def initialize(employee_discount = nil)
    @discount = employee_discount
    @total = 0 
  end 
  
  def add_item(item, quantity = nil,  price)
    if quantity != nil
      @total += (quantity * price)
    else
      @total += price
    end 
  end
  
  def apply_discount()
    if @discount != nil
      @total -= (@total * @discount)
      "After the discount, the total comes to #{@total}."
      binding.pry 
    else
      "There is no discount to apply."
    end 
  end 
    
  
  
  
end 