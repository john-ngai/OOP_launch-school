# More Modules
# https://launchschool.com/books/oo_ruby/read/inheritance#moremodules

# Using Modules for Namespacing ()
  # In this context, 'namespacing' is defined as organizing similar classes
  # under a module.
    # This helps us more easily recognize related classes, wile also reduces
    # the risk of classes colliding with other similarly named classes.
    module Mammal
      class Dog
        def speak(sound)
          return p sound
      end

      class Cat
        def say_name(name)
          return p name
        end
      end
    end

  # Classes in a module can be called by appending the class name to the
  # module name with two colons (::).
    buddy = Mammal::Dog.new
    kitty = Mammal::Cat.new
    buddy.speak("Arf!") # => 'Arf!'
    kitty.say_name("Meow...") # => 'Meow...'


# Using Modules as Containers (a.k.a Module Methods)
module Mammal
  # Similar to class methods, always prepend module methods with the
  # reserved word, 'self'.
  def self.speak(sound)
    return puts sound
  end
end

# Modles methods can be called directly from the module.
Mammal.speak("Rawr!!") # Using dot notation (preferred method).

# Module methods can also be called with two colons (::), although
# not recommended.
Mammal::speak("Rawr!!")
