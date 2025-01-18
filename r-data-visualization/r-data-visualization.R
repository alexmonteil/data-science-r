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

# Theme

pl <- pl + theme(plot.title = element_text(hjust = 0.5))

print(pl)

