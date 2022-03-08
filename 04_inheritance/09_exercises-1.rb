# Exercises (Part 1)
# https://launchschool.com/books/oo_ruby/read/inheritance#summary

=begin
1. Create a superclass called Vehicle for your MyCar class to inherit from and move
the behavior that isn't specific to the MyCar class to the superclass. Create a
constant in your MyCar class that stores information about the vehicle that makes
it different from other types of Vehicles.

Then create a new class called MyTruck that inherits from your superclass that also
has a constant defined that separates it from the MyCar class in some way.

2. Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.

3. Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

4. Print to the screen your method lookup for the classes that you have created.

5. Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.
=end

module Towable
  def can_tow?(lbs)
    return lbs < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :colour
  attr_reader :year, :model
  
  @@total_vehicles = 0

  def initialize(y, m, c)
    @year = y
    @model = m
    @colour = c
    @@total_vehicles += 1
  end

  def self.count
    return @@total_vehicles
  end

  def info
    return "Your car is a #{colour} #{year} #{model}."
  end

  def age
    return "Your car is #{years_old} year(s) old."
  end
  
  private

  def years_old
    return Time.now.year - year
  end
end

class MyCar < Vehicle
  TYPE = "sedan"
end

class MyTruck < Vehicle
  include Towable
  TYPE = "truck"
end

# puts "---Vehicle Method Lookup---"
# puts Vehicle.ancestors
# puts "\n"

# puts "---MyCar Method Lookup---"
# puts MyCar.ancestors
# puts "\n"

# puts "---MyTruck Method Lookup---"
# puts MyTruck.ancestors
# puts "\n"

car_john = MyCar.new(2015, "Toyota Camry", "white")
puts car_john.age