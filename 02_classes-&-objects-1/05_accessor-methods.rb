# Accessor Methods
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#accessormethods


# Example 1 - Getter & Setter Methods (The Long Way)
class GoodDog
  def initialize(name)
    @name = name
  end

    ## Getter method:
    def name
      return @name
    end

    ## Setter method:
    def name=(name) # Actual method name is 'name='. See line #.
      return @name = name

      # NOTE: Setter methods always returns the value that is passed in as an argument.
      return "Good boy" # Therefore, this line will always be ignored.
    end

    ## NOTE: It is a best practice to name the setter and getter methods using
    ## the same name as the instance variable they are exposing and setting.
end

Sparky = GoodDog.new("Sparky")
puts Sparky.name # => "Sparky"

# The special ruby setter method (name=) syntax allows us to use a more natural
# assignment syntax, instead of 'sparky.name=("Spartacus")'.
Sparky.name = "Spartacus" 

puts Sparky.name # => "Spartacus"


# Example 2 - Getter & Setter Methods (The Short Way)

  # Ruby has a built-in shortcut to create the getter & setter methods
  # using the 'attr_accessor' method.

class GoodDog
  # Option 1: Getter-only method.
  attr_reader :name, :height, :weight
  
  # Option 2: Setter-only method.
  attr_writer :name, :height, :weight

  # Option 3: Getter & setter methods.
  attr_accessor :name, :height, :weight

    ## All attr_* methods receive a symbol as it's parameter(s).

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  # We can also use the setter & getter methods from within the class as well.
  def speak
    # By removing the '@' symbol, we're calling the instance method instead of
    # the instance variable. This preference is considered a best practice.
    "#{name} says arf!"
  end

  # Calling Setter Methods with self
  def change_info(n, h, w)
    # To disambiguate from creating local variables, we need to use the 'self.name='
    # syntax to let Ruby know that we're calling the setter method.
    # This syntax can also be used for the getter method, but not a requirement.
    self.name = n
    self.height = h
    self.weight - w
  end
end

Sparky = GoodDog.new("Sparky")
puts Sparky.name # => "Sparky"
Sparky.name = "Spartacus" 
puts Sparky.name # => "Spartacus"
