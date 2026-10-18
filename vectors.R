# vectors!
  # a one-dimensional array of any homogeneous data type
vec = c(1, 2, 3, 4)
vec

differentVector = c(1, TRUE, "dalbah")
differentVector
# notice: all values are parsed into the 'strongest' data type -- character, in this case

booleanVector = c(FALSE, 1, 7, 0, TRUE)
booleanVector
# notice: true and false values are converted to ones and zeroes

array = c(1, 3, 5)
secondArray = c(6, 2, 4)
totalArray = array + secondArray
totalArray
# notice: using an operation on two arrays

# slices of an array
slice = c(1, 2, 3, 4, 5, 6, 7)
slice[1:3]
slice[1]
slice[5]

# an array of consecutive numbers
adj = c(1:10)
adj