require 'Date'

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :make

  @@vehicle_count = 0

  def initialize(year, make, color)
    @year = year
    @make = make
    @color = color
    @current_speed = 0
    @@vehicle_count += 1
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
    puts "Your new #{self.class.vehicle} color with a #{color} paint looks good."
  end

  def self.mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color}, #{year}, #{make}"
  end

  def self.vehicle_count
    puts "Total number of vehicles = #{@@vehicle_count}"
  end

  def age
    puts "Your #{self.make} is #{years_old} years old."
  end

  private
  def years_old
    Time.now.year - Time.new(year).year
  end
end

class MyCar < Vehicle
  @@vehicle = "Car"

  def self.vehicle
    @@vehicle
  end

end

class MyTruck < Vehicle
  include Towable

  @@vehicle = "Truck"

  def self.vehicle
    @@vehicle
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
car.age

MyCar.mileage(12, 324)
puts car
puts "==========================="
truck = MyTruck.new(2000, 'Mercedes', 'Grey')
truck.current_speed
truck.speed_up(100)
truck.current_speed
truck.brake(80)
truck.current_speed
truck.shut_off
truck.current_speed
puts truck.year
puts truck.color
truck.color = "blue"
puts truck.color
truck.spray_paint("green")
truck.age

MyTruck.mileage(6, 324)
puts truck

puts "==========================="
Vehicle.vehicle_count
p truck.class.ancestors
p car.class.ancestors
