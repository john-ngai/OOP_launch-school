# Exercises
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2#summary

# 1. Add a class method to your MyCar class that calculates the gas mileage of any car.
# 2. Override the to_s method to create a user friendly print out of your object.

class MyCar
  # Code ommited for brevity...

  def self.gas_mileage(litres, km)
    litres_per_100km = (@tank_capacity / @max_range) * 100
    return puts "Your car's gas mileage is #{litres_per_100km}/100 km."
  end

  def to_s
    puts "My car is a #{colour} #{year} #{model}."
  end
end


=begin
3. Fix the error in the following code:

  Error Message:
    test.rb:9:in `<main>': undefined method `name=' for
    #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

  class Person
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  bob = Person.new("Steve")
  bob.name = "Bob"
=end

class Person
  # Replaced attr_reader :name
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
