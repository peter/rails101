2.class == Fixnum
Fixnum.superclass == Integer
Integer.superclass == Numeric

3.0.class == Float
Float.superclass == Numeric

2/3 == 0
2/3.0 # => 0.6666667
2 + 3.0 == 5.0
"2".to_i + "3.0".to_f == 5.0

10000000000.class == Bignum
Bignum.superclass == Integer

2 + "3" # => TypeError: String can't be coerced into Fixnum
