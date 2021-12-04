class Cube
  attr_reader :volume 

  def initialize(volume)
    @volume = volume
  end
end

shape = Cube.new(200)
p shape.volume 
p shape.instance_variable_get(:@volume)

