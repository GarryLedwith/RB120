# Modify the class definition from above to facilitate the following methods. Note that there is no name= setter method now.

class Person
  def initialize(full_name) 
    parts_of_name_arr  = full_name.split 
    @first_name = parts_of_name_arr.first 
    @last_name = parts_of_name_arr.size > 1 ? parts_of_name_arr.last : '' 
  end
  
  # getter and setter methods for first name: 
  
  def first_name # geetter method 
    @first_name
  end 
  
  def first_name=(first_name)  # setter method 
    @first_name = first_name
  end 
  
  # getter and setter methods for last_name: 
  
  def last_name  # getter method 
    @last_name
  end
  
  def last_name=(last_name) # setter method 
    @last_name = last_name 
  end

  def name # instance method  
    "#{self.first_name} #{self.last_name}"
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'
