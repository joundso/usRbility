# Cleanup the backend in RStudio:
cat("\014") # Clears the console (imitates CTR + L)
rm(list = ls(all.names = TRUE)) # Clears the Global Environment/variables/data
invisible(gc()) # Garbage collector/Clear unused RAM
devtools::load_all()
# library(data.table)

## Start to code here:
sus_data <- data.table::fread(file = "./data/sus_results_demo.csv")
sus_data_melt <- melt_response_data(data = sus_data)
get_sus_score_raw(data = sus_data_melt)
