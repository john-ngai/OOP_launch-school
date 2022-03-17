# Private, Protected, and Public
# https://launchschool.com/books/oo_ruby/read/inheritance#privateprotectedandpublic

# In Ruby, Method Access Control is the practice of restricting access to certain
# methods defined in a class through the use of access modifiers.
  # There are three access modifiers in Ruby: public, private, & protected.

# Public Methods
  # Available to anyone who knows either the class or object's name.
  
# Private Methods
  # A 'private' method is called in our program, where anything below it is
  # private (unless the 'protected' method is called after to negate it).
  # However, private methods can be accessible by other methods in the class.
class GoodDog
  DOG_YEARS = 7

  def initialize(n, a)
    @name = n
    @age = a
  end

  # The 'human_years' method is still accessible by other methods in the class.
  # NOTE: Calling 'self.human_years' won't work in Ruby v2.7 or older.
  def public_disclosure
    return "#{@name} in human years is #{human_years}"
  end
  
  # Any method called below this line from outside the class will return an error.
  private

  def human_years
    return age * DOG_YEARS
  end
end

# Protected Methods
  # Inbetween a public and private method, and also not very commonly used in
  # real-world practice.
    # From inside the class, 'protected' methods are accessible like 'public' methods.
    # From outside the class, 'protected' methods act just like 'private' methods.
