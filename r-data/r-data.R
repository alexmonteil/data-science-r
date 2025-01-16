# R Data Access Methods

# Reading and Writing CSV Files

write.csv(mtcars, file = "cars_file.csv")
cars_df <- read.csv("cars_file.csv")


# Reading xlsx files (excel files)

#install.packages("readxl")
library(readxl)

# Reads in names of all excel sheets in the workbook
sheet_names <- excel_sheets(path = "data-science-r-udemy/Sample-Sales-Data.xlsx")

# Reads in an excel sheet 
df <- read_excel(path = "data-science-r-udemy/Sample-Sales-Data.xlsx", sheet = sheet_names[1])

# Reads in the entire workbook
entire_workbook <- lapply(sheet_names, read_excel, path = "data-science-r-udemy/Sample-Sales-Data.xlsx")

# Writing xlsx files (excel files)

#install.packages("writexl")
library(writexl)

cars_df2 <- mtcars
write_xlsx(cars_df2, path = "data-science-r-udemy/cars_data.xlsx")

# Connecting R to a Database

# Via odbc package

install.packages("odbc")
library(odbc)

con <- dbConnect(
  odbc::odbc(),
  driver = "[your driver's name]",
  server = "[your server's path]",
  database = "[your database's name]",
  uid = rstudioapi::askForPassword("Database user"),
  pwd = studioapi::askForPassword("Database password")
)

dbListTables(con) # Lists the tables in the db

data <- dbReadTable(con, "[table name]") # Reads a db table as data frame
my_df <- mtcars
dbWriteTable(con, "[table name]", my_df) # Writes data frame to a table in db
query_df <- dbGetQuery(con, "SELECT * FROM [TABLE NAME]") # Reads result of select query