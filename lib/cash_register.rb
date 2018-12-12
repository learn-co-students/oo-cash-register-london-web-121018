class CashRegister

attr_accessor :total, :discount, :items

@last_item_price = 0

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    self.total += (price * quantity)
    @last_item_price = price
    count = 0
    begin
      self.items << item
      count += 1
    end until count == quantity
  end

  def apply_discount
    self.total = self.total - (self.total * (self.discount.to_f/100))
    if self.discount != 0
    "After the discount, the total comes to $#{self.total.to_i}."
    else
    "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -=@last_item_price
  end

end
