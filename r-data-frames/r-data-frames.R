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