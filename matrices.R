# matrices! :3

x = matrix(1:10, 2)
for(i in 1:2){
  for(j in 1:5){
    print(x[i, j])
  }
}

# matrix function parameters
  # matrix(data, nrow, ncol, byrow = FALSE)
    # nrow is the number of rows
    # ncol is the number of columns
    # byrow indicates filling by row rather than by column

# exercise 1:
mat = matrix(1:4, 2, byrow = TRUE)

# exercise 2:
vec = c(3, 5, 2, 4, 11, 7, 8, 2, 4)
m = matrix(vec, 3, byrow = TRUE)
dim(m) # dimensionality: returns the number of rows and columns

# adding a row or column using rbind() or cbind()
a = matrix(1:12, ncol = 3)
a = cbind(a, c(11, 22, 33, 44))
a = rbind(a, c(111, 222, 333, 444))

# slicing
a[1,]
a[,1]
a[1:3,]
a[,1:2]

# exercise 3: find the transpose
f = matrix(c(3, 7, 5, 4, 20, 3, 6, 4, 11), 3, byrow = TRUE)
dest = matrix(c(f[,1], f[,2], f[,3]), 3, byrow = TRUE)

# exercise 4: find the maximum value in the matrix
max = dest[1, 1]
locRow = 1
locCol = 1
for(i in 1:3){
  for(j in 1:3){
    if(dest[i, j] > max){
      max = dest[i, j]
      locRow = j
      locCol = i
    }
  }
}