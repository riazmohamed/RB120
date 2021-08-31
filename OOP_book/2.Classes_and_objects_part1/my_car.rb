class MyCar
  attr_accessor :current_speed

  def initialize(current_speed)
    @current_speed = current_speed
  end

  def speed_up(add_speed)
    self.current_speed += add_speed
  end

  def brake(remove_speed)
    self.current_speed -= remove_speed
  end

  def shut_off
    self.current_speed = 0
  end
end

car = MyCar.new(0)
p car.current_speed
car.speed_up(100)
p car.current_speed
car.brake(80)
p car.current_speed
car.shut_off
p car.current_speed
