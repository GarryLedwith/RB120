class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def start_engine
    puts 'Ready to go!'
  end
end

class Truck < Vehicle

  def initialize(year)
    super 
    start_engine
  end  
end

truck1 = Truck.new(1994)
puts truck1.year
p Truck.ancestors 