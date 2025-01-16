# R Lists

v <- 1:3
mat <- matrix(1:10, nrow = 2)
df <- mtcars

my_list <- list(my_vector = v, my_matrix = mat, my_data_frame = df)

# List indexing

my_list[1] # Returns a list object, cannot be modified
my_list[2] # Returns a list object, cannot be modified
my_list[3] # Returns a list object, cannot be modified

my_list[[1]] # Returns the vector itself, can be modified
my_list[[2]] # Returns the matrix itself, can be modified
my_list[[3]] # Returns the data frame itself, can be modified

my_list$my_vector # Returns the vector itself, can be modified
my_list$my_matrix # Returns the matrix itself, can be modified
my_list$my_data_frame # Returns the data frame itself, can be modified

my_list[['my_vector']] # Returns the vector itself, can be modified
my_list[['my_matrix']] # Returns the matrix itself, can be modified
my_list[['my_data_frame']] # Returns the data frame itself, can be modified