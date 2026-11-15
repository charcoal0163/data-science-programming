# importing data!

# combining vectors:
v1 = c(1, 2, 3)
v2 = c(4, 5, 6)
v3 = c(7, 8, 9)
combV = c(v1, v2, v3)

# adding numerical items as data:
data = c(3, 5, 7, 5, 3, 2, 6, 8, 5, 6, 9)
combData = c(data, 4, 5, 7, 3, 4)

# adding text items as data:
day = c("Mon", "Tue", "Wed", "Thu")
day = c(day, "Fri")

# SMALL-SIZED DATA
  # storing data (default):
frame = data.frame(a = c(10, 20, 30, 40), b = c(50, 60, 70, 80), c = c(90, 100, 110, 120))
write.table(frame, file = "dalbahFrame.txt", row.names = FALSE) # row.names is the name of each row (eg. numbered), where default is TRUE

getwd() # used to see where the document was stored (in the directory/folder of R IDE)
# to open the document:
  # copy the path > windows + R > paste path > "OK"

  # storing a txt file on a different folder:
write.table(frame, file = "C:\\Users\\ASU\\Documents\\temporary file (0163)\\data science programming\\imported\\newdalbah.txt")

  # using scan() method to read data:
scanFrameDef = scan("dalbahFrame.txt", what = "character")
scanFrame = scan("C:\\Users\\ASU\\Documents\\temporary file (0163)\\data science programming\\imported\\newdalbah.txt", what = "character")

  # creating and storing as a csv file:
write.table(frame, file = "C:\\Users\\ASU\\Documents\\temporary file (0163)\\data science programming\\imported\\newdalbah.csv", row.names = FALSE)
scanFrameCSV = scan("C:\\Users\\ASU\\Documents\\temporary file (0163)\\data science programming\\imported\\newdalbah.csv", what = "character")

# LARGE-SIZED DATA
  # read.csv(file, header = TRUE, sep = ", ") - comma separator
  # read.csv2() - semicolon separator

dataframe = read.csv("C:\\Users\\ASU\\Documents\\temporary file (0163)\\data science programming\\imported\\mtcars.csv")