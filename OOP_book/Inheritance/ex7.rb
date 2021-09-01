class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(obj)
    grade > obj.grade
  end

  protected
  def grade
    @grade
  end
end

joe = Student.new("Joe", 82)
bob = Student.new("Bob", 80)
puts "Well done!" if joe.better_grade_than?(bob)
