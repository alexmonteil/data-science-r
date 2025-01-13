# Vector basics

# numeric vector

nvec <- c(1,2,3,4,5,6,7,8,9,10)
nvec

# character vector

cvec <- c("U", "S", "A")
cvec

# logical vector

lvec <- c(T,F,T,F)
lvec

# Vector Indexing and Slicing

nvec[2] # returns element at position 2
nvec[2:4] # returns vector with elements at position 2, 3 and 4
nvec[4:length(nvec)] # returns vector with elements from position 4 to end
cvec[c(1,3)] # returns vector with elements at position 1 and 3


# Custom indexing

temps <- c(66,45,54,77,65,58,67)
names(temps) <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
temps
temps["Mon"] # Yields 66


# Vector Arithmetic

v1 <- c(1,2,3)
v2 <- c(5,6,7)
v1 + v2 # Adds elements wise
v1 - v2 # Subtracts element wise
v1 * v2 # Multiplies element wise
v1 / v2 # Divides element wise

sum(v1) # sum of elements in v1
mean(v1) # mean of elements in v1
sd(v1) # std dev of elements in v1
max(v1) # returns largest element in v1
min(v1) # returns smallest element in v1
prod(v1) # product of elements in v1

# Vector comparison

comp1 <- v1 < v2 # returns a logical  vector for results of element wise comparison
comp2 <- v1 == v2 # returns a logical vector for results of element wise comparison
comp3 <- v1 > v2 # returns a logical vector for results of element wise comparison
comp4 <- v1 < 2 # returns a logical vector for results of element wise comparison

# Vector filtering

v <- c(1,2,3,4)
names(v) <- c("a", "b", "c", "d")
v[v > 2]

