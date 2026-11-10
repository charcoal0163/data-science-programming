# data analysis!
  # extraction (getting the data), transformation (cleaning up the data), visualisation (representing the data)

# how to import dplyr library:
  # tools > install packages > install dplyr

# manipulation:
  # right_join() - merging the left table with the right table (all shared data in both tables, anything not available in the left table is given "NA")
  # left_join() - merging the right table with the left table (all shared data in both tables, anything not available in the right table is given "NA")
  # inner_join() - merging only the shared data in the two tables (there will never be a value "NA")
  # full_join() - 

library(dplyr)
first = tribble(
  ~ ID, ~ y,
  "A", 5,
  "B", 5,
  "C", 8,
  "D", 0,
  "F", 9
)
second = tribble(
  ~ ID, ~ z,
  "A", 30,
  "B", 21,
  "C", 22,
  "D", 25,
  "E", 29
)

left_join(first, second, by = "ID") # column 'ID' is shared in both tables, so they were joined by it, and since 'E' isn't in the left table, it is ignored
right_join(first, second, by = "ID") # column 'ID' is shared in both tables, so they were joined by it, and since 'F' isn't in the right table, it is ignored
inner_join(first, second, by = "ID") # column 'ID' is shared in both tables, so they were joined by it, and 'E' and 'F' are both ignored
full_join(first, second, by = "ID") # column 'ID' is shared in both tables, so they were joined by it, including 'E' and 'F' which were given "NA"

# exercise 1: merging more than two tables
a = tribble(
  ~ ID, ~ x,
  "A", 3,
  "B", 4,
  "C", 7,
  "D", 8
)
b = tribble(
  ~ ID, ~ y,
  "A", 14,
  "B", 10,
  "C", 12,
  "F", 11
)
c = tribble(
  ~ ID, ~ z,
  "A", 30,
  "B", 40,
  "L", 50,
  "M", 60
)
  # way 1:
d = full_join(a, b, by = "ID")
full_join(d, c, by = "ID")
  # way 2:
full_join(full_join(a, b, by = "ID"), c, by = "ID")

full_join(a, b, by = "ID")

one = left_join(first, second, by = "ID")
two = left_join(second, first, by = "ID")

tab = rbind(two, unique(one))
tab2 = rbind(one, unique(two))

f = right_join(tab, tab2, by = "ID")
unique(f)