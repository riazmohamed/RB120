class Person
  attr_accessor :name

  def initialize(name)
    @name = name
    @last_name = ""
  end

  def first_name
    @name
  end

  def last_name
    @last_name
  end

  def last_name=(last)
     @last_name = last
  end

  def name
    first_name + " " + last_name
  end
end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'
