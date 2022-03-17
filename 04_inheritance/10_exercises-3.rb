# Exercises (Part 1)
# https://launchschool.com/books/oo_ruby/read/inheritance#summary

=begin
Given the following code...

  bob = Person.new
  bob.hi

And the corresponding error message...

  NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
  from (irb):8
  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

What is the problem and how would you go about fixing it?
=end

# The problem is that the 'hi' method has been defined under a 'private'
# method, and is therefore a private method / cannot be called outside of
# the class. To access the 'hi' method, we could either move the 'hi' method
# above the 'private' call, or def another method within the class that
# accesses the 'hi' method. Below is an example of the latter.

class Person
  def initialize(n)
    @name = n
  end

  def send_message
    return puts hi
  end

  private

  def hi
    return "Hello World!"
  end
end

bob = Person.new("Bob")
bob.send_message # => 'Hello World!'
