class NewBikes

  attr_accessor :brand_name, :colour, :size, :model

  def initialize(brand_name, colour, size, model)
    @brand_name = brand_name
    @colour = colour
    @size = size
    @model = model
    @speed = 0
  end

def accelerate(acceleration)
@speed += acceleration

end

def speed
  return @speed
end

  


end