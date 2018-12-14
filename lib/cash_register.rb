require "pry"

class CashRegister
  attr_accessor :items, :title, :total, :discount, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += price * quantity
    @quantity = quantity
    @quantity.times {@items.push(@title)}

  end

  def apply_discount
    return "There is no discount to apply." if self.discount == 0

    @total -= (self.total * self.discount) / 100
    "After the discount, the total comes to $#{self.total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= self.total
  end

  #binding.pry


end
