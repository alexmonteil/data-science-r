# Dplyr

#install.packages("dplyr")
#library(dplyr)
#library(nycflights13)

# filter() function: filters rows on conditions

# selects rows where month == 11, day == 3 and carrier is American Airlines
filter1 <- filter(data = flights, month == 11, day == 3, carrier == 'AA')

# slice() function: slices rows on indices

slice1 <- slice(data = flights, 1:10) # Selects rows from the vector of indices

# arrange() function: orders rows by columns passed as arguments

# orders rows by year, then by month, then by day then by arr_time
arranged1 <- arrange(data = flights, year, month, day, arr_time)

# orders rows by arr_time in descending order
arranged2 <- arrange(data = flights, desc(arr_time))

# select() function: selects a set of columns

select1 <- select(data = flights, carrier) # Selects carrier column only

# rename() function: renames columns

rename(data = flights, new_col_name = carrier) # Renames carrier column into new_col_name

# distinct() function: selects distinct (unique) values in data frame

distinct1 <- distinct(select(data = flights, carrier)) # Selects distinct carrier names

# mutate() function: creates columns that are functions of existing columns 
# and returns full data frame

mutated1 <- mutate(data = flights, new_col = arr_delay - dep_delay)

# transmute() function: creates columns that are functions of existing columns 
# and returns just the new columns

transmuted1 <- transmute(data = flights, new_col = arr_delay - dep_delay)

# summarise() function: returns new column with result of an aggregate function

# aggregate function computes mean of air_time column and returns it in a column avg_air_time
summarised1 <- summarise(data = flights, avg_air_time = mean(air_time, na.rm = T))

# aggregate function sums air_time column and returns it in a column total_air_time
summarise2 <- summarise(data = flights, total_air_time = sum(air_time, na.rm = T))

# sample_n() function: samples n rows at random from data frame

sample1 <- sample_n(data = flights, n)

# sample_frac() function: samples a percent of rows at random

sample2 <- sample_frac(data = flights, 0.1) # Returns 10% of rows at random

# Pipe operator

# Allows to pass the result of a function to another function sequentially
# Same as nesting functions but makes it more readable as code does not 
# have to be read from inside out

# Nesting example: (not very readable)
result <- arrange(sample_n(filter(mtcars, mpg > 20), size = 5), desc(mpg))

# Multiple assignment equivalent: (not memory efficient)
f <- filter(mtcars, mpg > 20)
s <- sample(f, size = 5)
result <- arrange(s, desc(mpg))

# Piping equivalent: readable and memory efficient
result <- mtcars %>% 
          filter(mpg > 20) %>% 
          sample_n(size = 5) %>% 
          arrange(desc(mpg))