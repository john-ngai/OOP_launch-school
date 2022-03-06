# Instance Methods
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#instancemethods

class GoodDog
  def initialize(name)
    @name = name
  end

  # Instance methods have access to instance variables, so we can
  # also expose information about the state (@name) of the object.
  def bark
    return "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

sparky.bark # Returns (not print): 'Sparky says arf!'

puts sparky.bark # Prints: 'Sparky says arf!'
puts fido.bark # Prints: 'Fido says arf!'
