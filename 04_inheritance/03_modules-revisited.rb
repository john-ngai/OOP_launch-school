# Mixing in Modules (Modules Revisited)
# https://launchschool.com/books/oo_ruby/read/inheritance#mixinginmodules

# Another way to keep your code DRY and avoid duplication is to mix in
# modules to the classes that require those behaviours.
  # A common naming convention for modules is to use the 'able' suffix
  # on whatever verb describes the behaviour your modeling. Most modules
  # should be able to follow this practice.

module Swimmable
  def swim
    return "I'm swimming!"
  end
end

class Animal
  # Hidden code...
end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
  # Hidden code...
end
