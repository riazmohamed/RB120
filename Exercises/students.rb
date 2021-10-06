class Student
  def initialize(name=nil, year=nil)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
  end
end

class NotEnrolled < Student
  def initialize
    super()
  end

  def to_s
    "Student currently #{self.class}"
  end
end

riaz = Undergraduate.new("Riaz", "2009")
ahamed = Graduate.new("Ahamed", "2009", "somewhere")
nowt = NotEnrolled.new
p riaz
p ahamed
puts nowt
