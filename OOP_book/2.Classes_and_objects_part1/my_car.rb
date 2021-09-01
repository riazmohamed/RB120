class MyCar
  attr_accessor :color
  attr_reader :year, :make

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

  def spray_paint(color)
    self.color = color
    puts "Your new car color with a #{color} paint looks good."
  end

  def self.mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color}, #{year}, #{make}"
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
puts car.year
puts car.color
car.color = "blue"
puts car.color
car.spray_paint("red")

MyCar.mileage(12, 324)
puts car
