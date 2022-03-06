# Initializing a New Object
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#initializinganewobject

# Methods that are invoked whenever new objects are created are
# called 'constructors'.


# Example of a constructor method.
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new
# => 'This object was initialized!'

# NOTE: The difference between class methods and instance methods
# will be covered in an upcoming chapter.
