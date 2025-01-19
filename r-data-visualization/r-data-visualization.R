# Data Visualization

# ggplot2

# install.packages("ggplot2")
# install.packages("ggplot2movies")
# library(ggplot2)
# library(ggplot2movies)

# Histograms

# Data & Aesthetics layers

pl <- ggplot(movies, aes(x = rating))

# Geometry layer

pl <- pl + geom_histogram(binwidth = 0.1, color = 'red', fill = 'pink', alpha = 0.4)

# Labels and legends

pl <- pl + labs(x = "Movie Rating", y = "Count", title = "Movie ratings and their frequencies")

# Theme layer

pl <- pl + theme(plot.title = element_text(hjust = 0.5))

print(pl)

# Scatterplots

# Data & Aesthetics layers

pl2 <- ggplot(mtcars, aes(x = wt, y = mpg))

# Geometry layer 

pl2 <- pl2 + geom_point(aes(shape = factor(cyl), color = factor(cyl)), size = 5)

# Labels and legends

pl2 <- pl2 + labs(x = "Weight", 
                  y = "Miles per gallon", 
                  title = "Study of car weights and fuel efficiency",
                  shape = "Cylinders",
                  color = "Cylinders")

# Theme layer

pl2 <- pl2 + theme(plot.title = element_text(hjust = 0.5))

print(pl2)



