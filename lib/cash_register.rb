
class CashRegister

    attr_accessor :total
    attr_reader :items

    def initialize(discount = false)
        @total = 0
        @discount = discount
        @items = []
    end

    def discount
        if @discount = true
            return 20
        end
    end

    def add_item(title, price, quantity = 1)
        self.total += price*quantity
        @price = price
        while quantity > 0
            @items << title
            quantity -= 1
        end
    end

    def apply_discount
        if @discount == false
            "There is no discount to apply."
        else
            self.total =  self.total - (self.total*self.discount/100)
            return "After the discount, the total comes to $#{self.total}."  
        end
    end 

    def void_last_transaction
        @total -= @price
    end
end
