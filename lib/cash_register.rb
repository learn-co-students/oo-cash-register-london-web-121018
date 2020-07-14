class CashRegister

attr_accessor :total, :discount, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(item, price, quantitiy = 1)
    @total += price*quantitiy
    @items << [item]*quantitiy
    @last_item_price = price

    end

  def apply_discount
    if @discount != 0
      @total = @total*(100 - @discount)
      @total = (@total/100).to_f
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    @total = @total - @last_item_price
  end

end
