# Class Inheritance
# https://launchschool.com/books/oo_ruby/read/inheritance#classinheritance

# Inheritance is when a class inherits behaviour from another class.
  # The class inheriting behaviour is called the 'subclass'.
  # The class that passes the inheritance is called the 'superclass'.


# Example 1 - Extracting a 'speak' method to an 'Animal' Superclass
class Animal
  def speak
    return "Hello"
  end
end

class GoodDog < Animal
  # ...
end

class Cat < Animal
  # ...
end

sparky = GoodDog.new
paws = Cat.new

puts sparky.speak # => 'Hello!'
puts paws.speak # => 'Hello!'

# The '<' symbol is used to signify that the GoodDog class is inheriting from
# the Animal class. 


# Example 2 - Overriding Inheritance
# (hidden code...)
class GoodDog < Animal
  # (hidden code...)
  def speak
    return "#{name} says arf!"
end
# (hidden code...)
puts sparky.speak # => 'Sparky says arf! '
puts paws.speak # => 'Hello!'

# We're able to override the 'speak' method from the Animal class because Ruby
# check's for the method within the object's class FIRST before the superclass.
  # Inheritance reduces avoidable duplications and keeps your code DRY.
