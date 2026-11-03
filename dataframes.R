# dataframes! :>
  # a bunch of vectors creating a (possibly) heterogeneous table

a = c(10, 20, 30, 40)
b = c("book", "pen", "pencil", "textbook")
c = c(TRUE, FALSE, TRUE, FALSE)
d = c(2.5, 8, 10, 7)
dataframe = data.frame(a, b, c, d)
dataframe

# exercise 1:
studentID = c(12, 13, 14, 15)
studentName = c("ali", "amal", "salim", "karam")
gender = c("M", "F", "M", "M")
grade = c(29, 30, 27, 20)
frame = data.frame(studentID, studentName, gender, grade)
frame

  # changing the name of each attribute
names(dataframe) = c("ID", "item", "available", "price")

  # finding the structure of the dataframe
str(dataframe)

  # slicing the dataframe (schema not included)
dataframe[1:2,]
dataframe[,1]
dataframe $ available # used to print one column only
dataframe[1, 1]

# updating the values of a column
frame $ grade = frame $ grade + 5 # way 1
frame[, 4] = frame[, 4] + 5 # way 2

age = c(19, 20, 18, 22)
frame $ age = age

  # getting a subset of the dataframe
subset(frame $ studentName, subset = grade > 25 & grade < 30)