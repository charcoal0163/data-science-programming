# statistical functions!

# basic functions:
  # abs(x) - absolute value (returns the positive value of any number)
  # log(x, base) - logarithm (default base 10, change by using base keyword)
  # exp(x) - exponentiation (2^x)
  # sqrt(x)
  # factorial(x)

vec = seq(45, 55, by = 1)
log(vec)
exp(vec)
sqrt(vec)

# statistic functions:
  # mean(x)
  # median(x)
  # var(x) - variance
  # sd(x) - standard deviation (the average distance of each data point away from the average)
  # scale(x) - standard z-scores (the mean subtracted from each data point, divided by the standard deviation)
  # quantile(x) - returns the quantiles of the data
  # summary(x) - complete summary of data

# using dataset cars (built-in)
frame = cars
dim(frame)
length(frame) # returns the number of columns
length(frame[, 1]) # returns the number of rows in column 1

# finding the mean of speed
mean(frame $ speed)
median(frame $ dist)
sd(frame $ speed) # returns the amount of variation of the values
scale(frame $ speed)
head(scale(frame[1]), 5) # returns the first five values
quantile(frame $ dist) # where 0% is the minimum value, 100% is the maximum value, 25% is where a quarter of the values is less than the founded value, 75% is where three quarters of the values is less than the founded value, and 50% is the halfway mark
