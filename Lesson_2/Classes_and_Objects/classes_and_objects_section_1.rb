# 1. Given the below usage of the Person class, code the class definition.

# Option 1:
class Person
  def initialize(name)
    @name = name
  end

  def name # getter mehtod 
    @name 
  end

  def name=(name) # setter method 
    @name = name
  end
end

bob = Person.new('bob')
puts bob.name                  # => 'bob'
bob.name = 'Robert'
puts bob.name                  # => 'Robert'

# Option 2: 

class Person
  attr_accessor :name # accessor method

  def initialize(name)
    @name = name
  end
end

bob = Person.new('bob')
puts bob.name
bob.name = 'Robert'
puts bob.name

