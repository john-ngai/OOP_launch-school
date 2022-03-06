# Instance Variables
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#instancevariables

# Every object's state is unique, and instance variables are how we keep track.

# Example - Create a new object and instantiate it with some state (name).
class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")

# The @ symbol in front of the @name variable is used to denote an
# 'instance variable'.
  # It is a variable that exists as long as the object exists and is one
  # of the ways we tie data to objects.
  
# Arguments can be passed into the constructor ('initialize' method) through
# the 'new' method.
