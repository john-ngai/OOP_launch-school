# Modules
# https://launchschool.com/books/oo_ruby/read/the_object_model

# Modules are another way of achieving pollymorphism in Ruby.

# A module is a collection of behaviours that are usable in other
# classes via mixins.
  # A module is 'mixed in' to a class using the 'include' method.


# Example of including the same module within multiple classes.
module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!") # => 'Arf!'
bob = HumanBeing.new
bob.speak("Hello!") # => 'Hello!'
