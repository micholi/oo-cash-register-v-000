class CashRegister

@@all = []

attr_accessor :total, :discount

# Hint Keep in mind that to call an instance method inside another instance method,
# we use the self keyword to refer to the instance on which we are operating
# For example: self.age += 1

  def initialize(discount = 0)
    @total = 0
    @discount = discount/100
  end

  def add_item(title, price, quantity = 1)
    @@all << title
    if quantity > 1
      self.total += price * quantity
    else
      self.total += price
    end
  end

  def apply_discount
    if self.discount > 0
    self.total *= 1 - self.discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @@all.pop
  end

end
