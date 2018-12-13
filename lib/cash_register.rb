
require 'pry'

class CashRegister

    attr_reader :discount, :items
    attr_accessor :total, :items_list

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @items_list = Hash.new(0)
    end


    def add_item(title, price, quantity = 1)
        @items_list = {title => price}
        @total += price * quantity
            i = 0
            while i < quantity
                @items << title
                i += 1
            end
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else            
            @total -= @discount *10
            "After the discount, the total comes to $#{@total}."
        end

    end

    def void_last_transaction
        @total -= @items_list.values.last
    end
end
