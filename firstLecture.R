# project: uci repository -> datasets (features > 10, instances > 500)

s = 5
d = 6
s + d

# creating an array
x = c(3, 4, 5, 2, 1)
y = c(0, 1, 3, 2, 4)

# printing an array
x
x + y

# assignment statements
  # way 1:
x = 5
  # way 2:
x <- 5
  # way 3:
5 -> x

# datatypes
  # numeric (floating point)
  # integers (whole numbers)
  # complex (imaginary numbers "a + bi")
  # logical (boolean values)
  # characters (strings, encased in "double" or 'single' quotations)

number <- 1
class(number)
typeof(number) # default for any numeric value is double unless explicity stated otherwise

intNumber = as.integer(16) # method to store a value as an integer
class(intNumber)
typeof(intNumber)
intNumber

intNumber = as.integer(23.5)
class(intNumber)
typeof(intNumber)
# notice: storing a non-integer value using 'as.integer' converts it to an integer
intNumber