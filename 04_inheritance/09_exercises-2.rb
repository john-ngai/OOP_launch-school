# Exercises (Part 1)
# https://launchschool.com/books/oo_ruby/read/inheritance#summary

=begin
1. Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...

  puts "Well done!" if joe.better_grade_than?(bob)
=end

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    if grade > other_student.grade
      return puts "Well done!"
    else
      return puts "There's always next time!"
    end
  end

  protected

  def grade
    return @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
joe.better_grade_than?(bob)
