# conditional statements! :D

  # if, else if, else statements
a = 10
b = 5
if(a > b){
  print("a is greater than b")
}else if(a < b){
  print("b is greater than a")
}else{
  print("nope")
}
# notice: when writing an else statement, it has to be in line with the closing bracket of the previous if statement

# exercise 1: check if a number is even or odd
v = 5
if(v %% 2 == 1){
  print("odd")
}else{
  print("even")
}

# exercise 2:
quan = 25
if(quan > 20){
  print("a ton")
}else{
  print("loser")
}

# exercise 3:
grade = 85
if(grade >= 90){
  print("A")
}else if(grade >= 80 & grade < 90){
  print("B")
}else if(grade >= 70 & grade < 80){
  print("C")
}else{
  print("F")
}

# exercise 4:
x = -5
if(x >= 0){
  print("f(x) = 1")
}else{
  print("f(x) = 0")
}

  # for loops
vec = c(5, 10, 15, 20, 25)
for(i in 1:5){
  print(vec[i])
}
for(i in 1:5){
  cat(vec[i], " ")
}
# notice: 'print' writes the statement then starts a new line, 'cat' concatenates

fruit = c("apple", "grapes", "mango", "fig", "banana")
for(f in fruit){
  print(f)
}

# exercise 5: find the sum in an array
sum = 0
array = c(1:10)
for(t in array){
  sum = sum + array[t]
}
sum

# exercise 6: is the number a prime?
n = 5
count = 0
for(num in 1:n){
  if(n %% num == 0){
    count = count + 1
  }
}
if(count == 2){
  print("prime")
}else{
  print("not prime")
}

# exercise 5 + 6: find the number of primes and their sum
  # version 1:
sums = 0
counts = 0
primes = 0
array = c(11:20)
for(t in 1:10){
  x = array[t]
  sums = sums + x
  flag = TRUE
  if(x <= 1){
    flag = FALSE
  }else{
    for(k in 2:(x - 1)){
      if(x %% k == 0){
        flag = FALSE
        break
      }
    }
    if(flag){
      counts = counts + 1
      primes = primes + array[t]
    }
  }
}
sums
counts
primes

  # version 2:
array = c(11:20)
for(t in array){
  count = 0
  for(k in 1:t){
    if(t %% k == 0){
        count = count + 1
      }
    }
    if(count == 2){
      print("prime")
    }else{
      print("not")
    }
  }

# matrices! (nested for loops)
mat = matrix(1:10, 2)
for(i in seq(nrow(mat))){
  for(j in seq(ncol(mat))){
    cat(mat[i, j], " ")
  }
  cat("\n")
}
