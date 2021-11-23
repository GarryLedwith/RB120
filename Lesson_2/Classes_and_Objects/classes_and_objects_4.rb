# Using the class definition from step #3, let's create a few more people -- that is, Person objects.

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    get_full_name(full_name)
  end

  def ==(other)
    self.first_name == other.first_name && self.last_name == other.last_name
  end

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def name=(full_name)
    get_full_name(full_name)
  end

  private

  def get_full_name(full_name)
    name_arr = full_name.split 
    @first_name = name_arr.first
    @last_name = name_arr.size > 1 ? name_arr.last : ''
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob == rob