class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

tasty_apple = Fruit.new('Green apple')
hot_pizza = Pizza.new('Mushroom pizza')

p tasty_apple.instance_variables
p hot_pizza.instance_variables 


