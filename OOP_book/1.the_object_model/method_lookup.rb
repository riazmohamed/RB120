module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
bob = HumanBeing.new

puts "------GoodDog ancestors-------"
puts GoodDog.ancestors
puts ""
puts "------HumanBeing ancestors-------"
puts HumanBeing.ancestors

# ------GoodDog ancestors-------
# GoodDog
# Speak
# Object
# PP::ObjectMixin
# Kernel
# BasicObject

# ------HumanBeing ancestors-------
# HumanBeing
# Speak
# Object
# PP::ObjectMixin
# Kernel
# BasicObject

# ancestors method looks up the method lookup chain
