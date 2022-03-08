# Super
# https://launchschool.com/books/oo_ruby/read/inheritance#super

# The 'super' keyword is used to call & invoke identical methods earlier in the
# method lookup path.


# Example 1 - 'super' in Action
class Animal
  def speak
    return "Hello!"
  end
end

class GoodDog < Animal
  def speak
    # 'super' is used to invoke the 'speak' method from the superclass, then
    # we extend the functionality by appending a string to the return value.
    return super + " From the GoodDog class!"
  end
end

sparky = GoodDog.new
puts sparky.speak # => 'Hello! From the GoodDog class!'


# Example 2 - 'super' in Action
class Animal
  def initialize(n)
    @name = n
  end
end

class BadDog < Animal
  def initialize(age, name)
    # Should be called as 'super()' when no arguments are passed.
    # If you don't use parentheses, Ruby may return an ArgumentError.
    super(name)
    @age = age
  end 
end

BadDog.new(2, "Bear") # => #<BadDog:0x00000000019038b8> @name="Bear", @age=2> 
