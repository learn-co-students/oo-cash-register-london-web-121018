require 'pry'

class CashRegister
  attr_accessor :discount, :total

  @@all = []

  @last_item_price = 0

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @@all << self
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    @items << [title]*quantity
    @last_item_price = price*quantity
  end

  def apply_discount
    if self.discount != 0
      dis = 1 - (self.discount/100.0)
      @total = @total * dis
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total = self.total - @last_item_price
  end

  def show_all
    @@all
  end

end

# #test method
#
# harry = CashRegister.new(10)
# john = CashRegister.new
#
# binding.pry
# p 'eof'
