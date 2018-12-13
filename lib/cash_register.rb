

class CashRegister

   attr_accessor :total, :discount, :last_item, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

def add_item(item, price, quantity = 1)
  @total += price*quantity
  @items_before = @items.count
  quantity.times do
    @items << item
  end
  @last_item_price = price
end

 ##while (@items.length - @items_before) < quantity
   ##@items << item


def apply_discount
   if discount > 0
    @total = @total*(100 - @discount)
    @total = (@total/100).to_f
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
  end
#
   def void_last_transaction
     @total = @total - @last_item_price
   end


end
