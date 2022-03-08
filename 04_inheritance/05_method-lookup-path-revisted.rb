# Method Lookup Path (Revisted)
# https://launchschool.com/books/oo_ruby/read/inheritance#methodlookup

# Recall that the method lookup path is the order in which classes are
# inspected when you call a method.

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors
=begin
=>
  GoodDog
  Climbable
  Swimmable
  Animal
  Walkable
  Object
  Kernel
  BasicObject
=end

# The order in which we include modules is important.
  # Ruby will FIRST look at the last module we included.
# Also, any modules included in a superclass will also
# be included onto the method lookup path.
