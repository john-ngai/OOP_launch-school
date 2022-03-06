# Method Lookup
# https://launchschool.com/books/oo_ruby/read/the_object_model#methodlookup

# Ruby has a distinct lookup method that it follows each time a
# method is called.
  # We can use the 'ancestors' method on any class to view it's
  # method lookup chain.


# Example of a Method Lookup.
module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  includes Speak
end

puts GoodDog.ancestors
# =>
  # GoodDog
  # Speak
  # Object
  # Kernel
  # BasicObject

# Since the Speak method is not defined in the GoodDog class, the
# next place it looks is the Speaks module.
  # This continues in an ordered, linear fashion, until the method
  # is found, or there are no more places to look.

# NOTE: A upcoming section on 'inheritance' will cover how the method
# lookup chain works when working with both mixins and class inheritance.
