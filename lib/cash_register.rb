class CashRegister

attr_accessor :total, :discount

# Hint Keep in mind that to call an instance method inside another instance method,
# we use the self keyword to refer to the instance on which we are operating
# For example: self.age += 1

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = nil)

  end

  def apply_discount
    self.discount
  end

  def items

  end

  def void_last_transaction

  end

end
