class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(obj)
    current_grade > obj.current_grade
  end

  def current_grade
    self.grade
  end

  private

  def grade
    @grade
  end
end

joe = Student.new("Joe", 82)
bob = Student.new("Bob", 80)
puts "Well done!" if joe.better_grade_than?(bob)
p joe.current_grade
p bob.current_grade
