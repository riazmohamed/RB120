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

=begin
Given solution

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end
=end

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'
