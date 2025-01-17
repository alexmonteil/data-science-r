# R Advanced Programming

# seq() function

seq(from = 0, to = 100, by = 10) # generates a sequence from 0 to 100 jumping 10 at a time

# sort() function

v <- c(1, 4, 2, 7, 0, 13, 3, 11)
sorted <- sort(v) # Returns vector with elements sorted in asc
sorted2 <- sort(v, decreasing = T) # Returns vector with elements sorted in dsc

# rev() function

v <- 1:10
reversed <- rev(v) # Returns vector with elements reversed

# str() function

str(mtcars) # Returns info about structure of the variable

# append() function (works on vectors and lists)

v1 <- 1:10
v2 <- 35:40
combined_v <- append(v1,v2) # Returns vector with v1 and v2 combined

# Checking data type: is.<type>() functions

v <- 1:3
is.vector(v) # Returns logical
is.data.frame(v) # Returns logical
# is.<type>() exists for many more types

# Converting data types: as.<type>() function

as.list(v) # Returns a list from v
as.matrix(v) # Returns a matrix from v
# as.<type>() exists for many more types

# Sample function

sampl <- sample(x = 1:100, size = 3) # Samples 3 numbers from x vector at random

# Samples 2 numbers form x vector with defined probabilities for each possible number
sampl2 <- sample(x = 1:5, size = 2, prob = c(0.1, 0.1, 0.3, 0.3, 0.2)) 

# Apply function

v <- 1:5

# Multiplies input number by 2
times2 <- function(x) {
  return(x * 2)
}

result_list <- lapply(v, times2) # Applies times2 to each element and returns a list
result_vector <- sapply(v, times2) # Applies times2 to each element and returns a vector 


multiplyby <- function(n, fac) {
  return(n * fac)
}

# If custom function has more than 1 arg, pass other args to sapply after
result_vector2 <- sapply(v, multiplyby, fac = 2)

# Anonymous functions (lambda functions)

v <- 1:5
doubled_v <- sapply(v, function(n){num * 2})

# Math functions (some of them)

# abs() --> computes absolute value
# sum() --> sums all the elements in input (vector)
# mean() --> computes mean of all elements in input (vector)
# median() --> computes median of elements in input (vector)
# sd() --> computes standard deviation elements in input
# round(x,digits) --> rounds x to specified digits arg
# many more functions available in official docs

# Regular expressions (pattern matching)

text <- "Hi there, what is the weather like today where you live ?"
grepl("weather", text) # Returns logical indicating whether "weather" pattern is in text

v <- c("a", "b","c", "d", "d")
grepl("b", v) # Returns a vector of logicals indicating whether each index has pattern "b"
grep("b", v) # Returns vector of indices at which pattern "b" exists

# Dates and Timestamps

# Date is a class in R
today <- Sys.Date()
class(today) # Returns "Date"

# To create a date from a string
date_text <- "1990-01-01"
date_object <- as.Date(date_text) # Returns date object

# Utilize format arg if text not in Date standard form
date2_text <- "Nov-03-90"
date2_object <- as.Date(date2_text, format = "%b-%d-%y") # Returns date object

# More on specific format specifiers in official docs

# Timestamps objects
time_text <- "11:02:03"
timestamp_object <- as.POSIXlt(time_text, format = "%H:%M:%S") # Returns Unix timestamp object
timestamp_object2 <- strptime(time_text, format = "%H:%M:%S") # Returns Unix timestamp object
