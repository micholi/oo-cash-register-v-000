class CashRegister

attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
        @items << item

      if quantity > 1
        
        
        self.total += price * quantity
      else
    
        self.total += price
    end
    end
  end

  def apply_discount
    if self.discount > 0
    self.total -= self.total * self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction

  end

end
