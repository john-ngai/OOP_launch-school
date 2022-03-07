# Exercises
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1

=begin
1. Create a class called MyCar. When you initialize a new instance or object
of the class, allow the user to define some instance variables that tell us
the year, color, and model of the car. Create an instance variable that is set
to 0 during instantiation of the object to track the current speed of the car
as well. Create instance methods that allow the car to speed up, brake, and
shut the car off.

2. Add an accessor method to your MyCar class to change and view the color
of your car. Then add an accessor method that allows you to view, but not modify,
the year of your car.

3. You want to create a nice interface that allows you to accurately describe the
action you want your program to perform. Create a method called spray_paint that
can be called on an object and will modify the color of the car.
=end

  class MyCar
    attr_accessor :colour
    attr_reader :year
    
    def initialize(y, m, c)
      @year = y
      @model = m
      @colour = c
      @speed = 0
    end

    def current_speed
      puts "Speed = #{@speed}"
    end

    def accelerate(num)
      @speed += num
      puts "Accelerating #{num} km/h..."
    end

    def decelerate(num)
      if @speed - num >= 0
        @speed -= num
        puts "Decelerating #{num} km/hr"
      else 
        @speed = 0
        puts "Attempting to decelerating #{num} km/hr"
      end
    end

    def engine_off
      @speed = 0
      puts "Engine off..."
    end

    def spray_paint(paint)
      old_colour = colour
      self.colour = paint
      puts "You've updated your car's paint colour from #{old_colour} to #{colour}!"
    end

    def check_year
      puts "Your model year is #{year}."
    end
  end

  car_john = MyCar.new(2015, "Toyota Camry", "white")
  car_john.accelerate(10)
  car_john.current_speed
  car_john.decelerate(15)
  car_john.current_speed
  car_john.engine_off
  car_john.spray_paint("red")
  car_john.check_year
