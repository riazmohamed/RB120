# How to create an object in Ruby? Give an example of the creation of the object.

# A new instance of a class is created in Ruby by calling the class method #new on the class.
# This is known as the instantiation of the Object

# Example
module Sound
  def speak(sound)
    puts sound
  end
end

class HumanBeing #defining a class
  include Sound
end

bob = HumanBeing.new # instantiation of a new object/instance of the HumanBeing class
bob.speak("How are you?")

# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

# MOdule definition
  # - In Ruby Mutiple inheritance is acheived by "mixing-in" modules using the include method invocation followed by the module name.
  # Modules are a collection of classes, methods and constants.
  # group reusable code in one place
  # Module are also used as a name space

# Namespacing Example
  module Animals
    class Elephant
      include Sound
    end

    class Lion
      include Sound
    end
  end

  lion = Animals::Lion.new
  lion.speak("Roar!!!")
  elephant = Animals::Elephant.new
  elephant.speak("I trumpet a lot!!!")
