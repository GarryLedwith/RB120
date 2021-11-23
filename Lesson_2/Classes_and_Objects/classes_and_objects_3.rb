# Now create a smart name= method that can take just a first name or a full name, 
# and knows how to set the first_name and last_name appropriately.

# Option 1: 

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    name_arr = full_name.split 
    @first_name = name_arr.first 
    @last_name = name_arr.size > 1 ? name_arr.last : ''
  end

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def name=(full_name)
    parts_of_name = full_name.split 
    @first_name = parts_of_name.first
    @last_name = parts_of_name.last
  end 
end

# Option 2: (refactored to DRY up code)

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    get_full_name(full_name)
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

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
puts bob.first_name            # => 'John'
puts bob.last_name             # => 'Adams'
