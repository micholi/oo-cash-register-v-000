class CashRegister

@@all = []

attr_accessor :total, :discount

# Hint Keep in mind that to call an instance method inside another instance method,
# we use the self keyword to refer to the instance on which we are operating
# For example: self.age += 1

  def initialize(discount = 0)
    @total = 0
    @discount = discount
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
    total -= self.discount
      "After the discount, the total comes to #{total}."
  end

  def items
    cart
  end

  def void_last_transaction

  end

end
