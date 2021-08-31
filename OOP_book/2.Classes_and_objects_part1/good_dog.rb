class GoodDog
  def initialize(name) # constructor as it gets triggered everytime a new object is instantiated
    @name = name
  end

  def name # instance method - exposes the behaviour
    @name # instance variable keeps track of the state of the object - uniq for every object
  end
end

sparky = GoodDog.new("Sparky") # object instance
p sparky.name
