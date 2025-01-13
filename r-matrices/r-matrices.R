# Creating a matrix

matrix(1:10, nrow = 2)

# R fills all the elements by column into 2 rows 

# byrow argument can be used to specify fill needs to be by row

matrix(1:10, nrow = 2, byrow = T)

# Weekly stock prices for google and microsoft

goog <- c(450, 451, 452, 445, 468)
msft <- c(230, 231, 232, 233, 228)

# Combined weekly stock prices

stocks <- c(goog, msft)

# Weekly stock prices rearranged in a matrix each row is for a company

stock_matrix <- matrix(data = stocks, nrow = 2, byrow = T)

# To name rows use rownames()

days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
stock_names <- c("GOOG", "MSFT")

rownames(stock_matrix) <- stock_names

# To name columns use colnames()

colnames(stock_matrix) <- days

# To sum columns

colSums(stock_matrix)

# To sum rows

rowSums(stock_matrix)

# Mean of rows

rowMeans(stock_matrix)

# Mean of columns

colMeans(stock_matrix)

# Adding Rows

FB <- c(111, 112, 113, 120, 121)
tech_stocks <- rbind(stock_matrix, FB)

# Adding Columns

avg <- rowMeans(tech_stocks)
tech_stocks <- cbind(tech_stocks, avg)

# Factor vectors

animals <- c("d", "c", "d", "c", "c")
animals_factored <- factor(animals) # Nominal (no order)
heats <- c("cold", "med", "hot", "hot", "med", "cold") 
heats_factored <- factor(heats, ordered = T, levels = c("cold", "med", "hot")) # Ordinal (order exists)

# Matrix indexing

tech_stocks[,1] # Returns column 1
tech_stocks[1,] # Returns row 1
tech_stocks[1:2, 1:2] # Returns entries from rows and columns 1 and 2
tech_stocks[1:2,] # Returns rows 1 and 2 fully
tech_stocks[,c(2,4)] # Returns columns 2 and 4

# Matrix Arithmetic

mat1 <- matrix(data = 1:25, nrow = 5, byrow = T)
mat2 <- matrix(data = 26:50, nrow = 5, byrow = T)

mat1 + mat2 # Adds element wise
mat1 - mat2 # Subtracts element wise
mat1 * 2 # Multiplies all elements by 2
mat1 ^ 3 # Exponentiates all elements to the power of 3
mat1 * mat2 # Performs element wise multiplication

# Matrix specific operations

mat1 %*% mat2 # Performs matrix product
mat1_inverse <- solve(mat1) # Returns inverse of the matrix argument or error
mat1_transpose <- t(mat1) # Returns transpose of the matrix argument


# Matrix comparisons

mat1 < 1 # Returns logical matrix for results of element wise comparison
mat1 == mat2 # Returns logical matrix for results of element wise comparison
mat1 < mat2 # Returns logical matrix for results of element wise comparison


