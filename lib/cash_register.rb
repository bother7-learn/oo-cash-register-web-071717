require 'pry'
class CashRegister

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end
def items
  @items
end
def discount
  @discount
end

def total= (total)
  @total = total
end

def add_item(title, price, qty=1)

qty.times do @items << title
end
@total = @total + price * qty
end

def apply_discount
##  binding.pry
  if @discount != 0
    @total = @total * (100-@discount)/100
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  @total = 0
end


end
