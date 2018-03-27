class CashRegister

@@all = []

attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @@all << item
    if quantity > 1
      self.total += price * quantity
    else
      self.total += price
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
    @@all
  end

  def void_last_transaction

  end

end
