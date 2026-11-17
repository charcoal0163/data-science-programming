# EXCEL FILES:
  # what is excel? a bunch of rows (numbered) and columns (alphabetically labelled), each cell is known by (COL-ROW) (e.g., B3)
  # for a clump of cells, they are known by the topmost left cell to the bottom right cell (e.g., A1:B3)

# to use any excel file, readxl library must first be installed
  # install readxl library through tools > install packages
library(readxl)

# methods in readxl:
  # 1. example(): shows a bunch of datasets available in R
readxl_example()

  # 2. example(dataset): returns path of a dataset
path = readxl_example("datasets.xlsx")

  # 3. read_excel(): reads through a sheet of the excel document
frame = read_excel(path)
# parameters:
    # A. path of where the document is located
    # B. sheet specifies which sheet to read (default is SHEET 1)
    # C. range specifies a certain clump of cells (default is ALL CELLS)
    # D. col_names specifies which columns to import (default is TRUE)

length(frame)
frame $ disp # to return a specific column
# notice: it can be accessed as any other regular dataframe

  # 4. excel_sheets(): returns the name of all the sheets of the document
excel_sheets(path) # can be accessed by name of sheet or index (starting at 1)

third = read_excel(path, sheet = "quakes")
numberedThird = read_excel(path, sheet = 3)
identical(third, numberedThird)

# exercise 1:
framePath = readxl_example("datasets.xlsx")
excel_sheets(framePath)
dataframe = read_excel(framePath, sheet = "mtcars", n_max = 5, col_names = TRUE) # where n_max is used to return a limited number of rows, and col_names shows the column headers (default is TRUE)
nrow(dataframe)

# exercise 2:
thirdPath = readxl_example("datasets.xlsx")
thirdFrame = read_excel(thirdPath, range = "A1:B5")
thirdFrameRows = read_excel(thirdPath, range = cell_rows(2:3), col_names = FALSE)
thirdFrameCols = read_excel(thirdPath, range = cell_cols("B:C"))

# counting NULL values
nulls = read_excel(path, na = "110")
sum(is.na(nulls))

# exercise 3: change the values of column hp, if the value is greater than 100 change to 1, if less than 100 change to 0
frames = read_excel(path)
for(i in 1:length(hp)){
  if(frames[i, 4] >= 100){
    frames[i, 4] = 1
  }else{
    frames[i, 4] = 0
  }
}

# exercise 4: count all instances of 6
count = 0
for(i in 1:32){
  for(j in 1:11){
    if(frames[i, j] == 6){
      count = count + 1
    }
  }
}

# exercise 5: swap values of vs and am
temp = frames $ vs
frames $ vs = frames $ am
frames $ am = temp
