# Inheritance vs Modules
# https://launchschool.com/books/oo_ruby/read/inheritance#inheritancevsmodules

# Class inheritance is the traditional way to think about inheritance.
  # One type inherits behaviours from another type.
# The other form commonly referred to as 'interface inheritance'.
  # Instead of inheriting from another type, the inheritance is provided
  # by the interface mixin module.


# When to Use Class Inheritance vs Mixins?
  # 1. You can only subclass from one class. Whereas you can mixin as many
  # modules as you'd like.

  # 2. If there's an 'is-a' relationship, choose class inheritance. If
  # If there's a 'has-a' relationship, choose interface inheritance.
    # e.g. A dog 'is an' animal and 'has an' ability to swim.
  
  # 3. You cannot instantiate modules (i.e. create an object). Instead,
  # modules are meant to be used for namespacing and grouping common
  # methods together.

