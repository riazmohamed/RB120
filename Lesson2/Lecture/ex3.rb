class Person
  def initialize(name)
    @name = name
    @first_name = name.split(" ").first
    @last_name = name.split(" ").last || ""
  end

  def first_name
    @first_name
  end

  def last_name=(last)
    @last_name = last
    @name = @name + " " + @last_name
  end

  def last_name
    @last_name
  end

  def name=(n)
    @name = n
    @first_name = name.split(" ").first
    @last_name = name.split(" ").last || ""
  end

  def name
    @name
  end
end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'
