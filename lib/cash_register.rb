require 'pry'


class CashRegister
  attr_accessor :total, :discount, :prev_total, :arr


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @arr = []
  end

  def add_item(item,price,opt=1)
    opt.times do self.arr << item; end 
    self.prev_total = self.total
    if self.total == 0
      self.total += (price * opt)
      self.prev_total = self.total
    else
      self.total += (price * opt)
    end


  end

  def apply_discount
    if self.discount != 0
      self.total = self.total - self.total * (self.discount.to_f/100)

      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items

    self.arr
  end

  def void_last_transaction

    self.total = self.total - self.prev_total
  end
end
