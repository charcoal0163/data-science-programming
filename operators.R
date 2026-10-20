# operators!
  # arithmetic (+ for addition, - for subtraction, * for multiplication, / for division, ^ or ** for exponentiation, %% modulo)
3 + 4 # addition
3 * 5 # multiplication
(5 + 5) / 2 # division
2 ** 5 # exponents
21 %% 5 # modulo

  # relational operators
# < less than
# <= less than or equal to
# > greater than
# >= greater than or equal to
# == equal to
# != not equal to

  # logical operators
# & and
# || or

# using logical operators
  # way 1:
vector = c(1:10)
vector > 5 # check if each element is greater than five

  # way 2:
vector[(vector > 5)] # output the elements that are greater than five

# exercise 1:
vector[(vector %% 2 == 1)]
vector[((vector + 3) > 7)]
vector[(vector >= 6 & vector <= 9)]

# exercise 2:
  # create a vector from 1 to 100 and then add 6 to each element, then print the elements between 17 and 35
vec = c(1:100)
vec = vec + 6
vec[(vec >= 17) & (vec <= 35)]

  # create a vector from 1 to 100 and then add 6 to each element, then print the elements between index 17 and index 35
vec = c(1:100)
vec = vec + 6
vec[17:35]

# exercise 3:
x = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x = x[1:3] + x[4:6] + x[7:9]
x