# while loops!

v = 2.987
while(v <= 4.987){
  v = v + 0.987
  print(c(v, v - 1, v - 2))
}

# exercise 1:
x = 10
while(x > 0){
  cat(x, " ")
  if(x == 6){
    cat("\n")
  }
  x = x - 1
}

# exercise 2:
set.seed(NULL) # provides a random number
stock = 50
price = 50
loop = 1
while(price > 45){
  price = stock + sample(-10:10, 1)
  loop = loop + 1
  cat(price, " ")
  print(loop)
}

# exercise 3:
n = 5
repeat{
  print(n)
  n = n + 1
  if(n == 10){
    break
  }
}

# exercise 4:
values = 1:10
for(i in values){
  if(i == 2){
    break
  }
  print(i)
}

# exercise 5:
for(i in 1:4){
  for(j in 1:i){
    cat("*")
  }
  cat("\n")
}

# exercise 6:
for(i in 1:4){
  for(j in 1:i){
    if(i == j){
      cat("0")
    }else{
      cat("*")
    }
  }
  cat("\n")
}

# exercise 7:
for(i in 1:4){
  for(j in 1:i){
    if(i == j){
      cat("0")
    }else if(i > j){
      cat("1")
    }else{
      cat("2")
    }
  }
  cat("\n")
}