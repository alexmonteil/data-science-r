# Creating data frames

days <- c("Mon", "Tue", "Wed", "Thur", "Fri")
temps <- c(65.4,62.3,67.8,58.9,66.4)
rain <- c(T,T,F,F,T)

df <- data.frame(days, temps, rain)

print(df)
str(df)
summary(df)

# Data frame Indexing

df[1,] # Selects entire 1st row
df[,1] # Selects entire 1st column
df[2:3,] # Selects rows 2 to 3
df[2:3, 2:3] # Selects entries in rows 2 to 3 and columns 2 to 3
df[,"rain"] # Selects column with name rain
df[1:4,c("days", "temps")] # Selects rows 1 - 4 for days and temps columns
df$days # Returns days column as a vector
df["days"] # Returns days column as data frame

# Data frame Selection

subset(df, subset = rain == T) # Selects all rows where rain is true
subset(df, subset = temps > 63) # Selects all rows where temp is above 63

# Data frame Ordering

sorted_temps_asc <- order(df$temps) # Returns vector with sorted temp indices in ascending order
df[sorted_temps_asc,] # Selects all rows but sorted by temps in ascending order
sorted_temps_dsc <- order(-df$temps) # Returns vector with sorted temp indices in descending order
df[sorted_temps_dsc,] # Selects all rows by sorted by temps in descending order

# Data frames Operations

# Creation

c1 <- 1:10
c2 <- letters[1:10]
df <- data.frame(col.name.1 = c1, col.name.2 = c2)

# Reading and Writing csv files

write.csv(df, file = "saved_df.csv") # Writes data frame into csv file
df2 <- read.csv('saved_df.csv') # Read csv file into variable

# Counting rows and columns

nrow(df)
ncol(df)

# Checking row and column names

colnames(df)
rownames(df) # Be careful with rownames if large number of rows could be slow

# Data frame structure

str(df)

# Statistical summary

summary(df)

# Single cell selection

df[[5,2]] # Returns cell at row 5 col 2
df[[5,2]] <- "z" # Reassigns new value to cell at row 5 col 2

# Row selection

df[1:2,] # Returns rows 1 and 2

# Column selection

df[,1] # Returns column 1 (days) as vector
df$days # Returns column 1 (days) as vector
df[,"days"] # Returns column 1 (days) as vector
df["days"] # Returns column 1 (days) as data frame



