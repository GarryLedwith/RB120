class Person
  
  def name=(name)
    @first_name, @last_nmme = name.split 
  end

  def name 
    "#{@first_name} #{@last_nmme}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name

