class MyCar
  def initialize(year, make, color)
    @year = year
    @make = make
    @color = color
    @current_speed = 0
  end

  def speed_up(add_speed)
    @current_speed += add_speed
    puts "You pushed the gas and accelerate #{add_speed} mph."
  end

  def brake(remove_speed)
    @current_speed -= remove_speed
    puts "You pushed the brake and decelerate #{remove_speed} mph."
  end

  def current_speed
    puts "You are currently doing #{@current_speed} mph."
  end

  def shut_off
    @current_speed = 0
    puts "Time to stop!"
  end
end

car = MyCar.new(1997, 'chevy lumina', 'white')
car.current_speed
car.speed_up(100)
car.current_speed
car.brake(80)
car.current_speed
car.shut_off
car.current_speed
