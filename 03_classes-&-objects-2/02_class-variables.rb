# Class Variables
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2#classmethods

# Class variables are created using two '@' symbols.
class GoodDogs
  @@number_of_dogs = 0

  # 'initialize' gets called each time we instantiate a (new) object via
  # the 'new' method.
  def initialize
    @@number_of_dogs = 1
  end

  def self.total_number_of_dogs
    return @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs # => 2
