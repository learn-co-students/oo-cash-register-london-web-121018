class CashRegister
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end
    def total
        @total
    end
    def total=(amount)
        @total = amount
    end

    def add_item(name, price, quantity = 1)
        if @items.nil?
            @items = []
        end
        quantity.times {@items << name}
        @last_transaction = price*quantity
        self.total += price*quantity
    end

    def apply_discount
        if @discount > 0
            @total = @total - ((@total * @discount) / 100)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
       @total = @total - @last_transaction

    end

    attr_reader :discount

end

