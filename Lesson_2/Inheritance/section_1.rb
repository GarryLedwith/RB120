class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog 
  def swim 
    "can't swim!"
  end
end

rex = Bulldog.new 
puts rex.speak 
puts rex.swim 