# The to_s Method
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2#theto_smethod

# The 'to_s' method is built into every class in Ruby.
  # Knowing when 'to_s' is called will help us understand read and write
  # better OO code.

# Example 1 - puts & to_s
sparky = GoodDog.new("Sparky")

# By default, the to_s method returns the name of the object's class
# and an encoding of the object id.
puts sparky # => #<GoodDog:0x00000000009dd348>

  # NOTE: 'puts' methods calls 'to_s' for any argument that is not an array.
  # For arrays, it writes on separate lines the result of calling 'to_s' on
  # each element of the array.


# Example 2 - Overriding to_s
class GoodDog
  attr_reader :name

  def initialize(n)
    @name = n
  end

  def to_s
    "This dog's name is #{name}."
  end
end

puts sparky # => 'This dog's name is Sparky.'


# Example 3 - to_s is Automatically called in String Interpolation
puts "#{sparky}" # => 'This dog's name is Sparky.'
