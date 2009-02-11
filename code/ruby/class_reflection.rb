# Using Class#superclass
klass = Fixnum
begin
  print klass
  klass = klass.superclass
  print " < " if klass
end while klass
# => Fixnum < Integer < Numeric < Object

# Using Class#ancestors
Fixnum.ancestors
# => Fixnum, Integer, Precision, Numeric, Comparable, Object, Kernel

# Inspecting methods and variables
Fixnum.public_instance_methods(false)
Fixnum.class_variables
Fixnum.constants
1.instance_variables
