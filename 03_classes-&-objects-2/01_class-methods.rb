# Class Methods
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2#classmethods

# Class methods are methods called directly onto the class itself, without having
# to instantiate any objects.

# When defining a class method, always prepend the method name with the
# reserved word, 'self'.
class GoodDog
  def self.what_am_i
    puts "I'm a GoodDog class!"
  end
end

GoodDog.what_am_i # => 'I'm a GoodDog class!'

# Objects contain state. If we have a method that doesn't need to deal with state,
# then we can just use a class method.
