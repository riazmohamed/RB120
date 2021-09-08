class Person
  attr_accessor :name
  def initialize(name)
  end
end

bob = Person.new('bob')
bob.name                  # => 'bob'
bob.name = 'Robert'
p bob.name
