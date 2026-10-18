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

# numeric -- doubles
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

# imaginary numbers -- default form: a + bi
imX = 6 - 10i
class(imX)
typeof(imX)

# logical data -- boolean value
trueVal = TRUE
class(trueVal)
typeof(trueVal)

falseVal = FALSE
class(falseVal)
typeof(falseVal)

# character data
charValue = "dalbah"
class(charValue)
typeof(charValue)

secondChar = as.character("dalbah")
numberChar = as.character(imX)
numberChar
class(secondChar)
typeof(secondChar)
class(numberChar)
typeof(numberChar)

# conversion + rules
  ## to numeric
# imaginary to numerical: imaginary part is discarded
a = 10.5 + 6i
numericA = as.numeric(a)
numericA

# logical to numerical
plus = TRUE
numericPlus = as.numeric(plus)
numericPlus
minus = FALSE
numericMinus = as.numeric(minus)
numericMinus

# character to numerical: any character will not be converted (not applicable)
name = "DALBAH"
numericName = as.numeric(name)
numericName
digits = "123"
numericDigits = as.numeric(digits)
numericDigits

  ## to integer
# numeric to integer
b = 10.5
intB = as.integer(b) # removes the decimal part
intB

  ## to logical
# numeric, integer, or complex to logical: false for zero, true for everything else
m = 12.5 - 4i
logicalM = as.logical(m)
logicalM

# character to logical: will not return a value regardless of character nature
w = "Dalbah"
logW = as.logical(w)
logW
y = "6"
logY = as.logical(y)
logY

  ## to character
# any data type to character: itself between double quotations
i = 16.25 - 9i
conv1 = as.character(i)
conv1
