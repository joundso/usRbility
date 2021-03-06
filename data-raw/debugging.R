# Cleanup the backend in RStudio:
cat("\014") # Clears the console (imitates CTR + L)
rm(list = ls(all.names = TRUE)) # Clears the Global Environment/variables/data
invisible(gc()) # Garbage collector/Clear unused RAM
devtools::load_all()

## Start to code here:
sus_data <- data.table::fread(file = "./data-raw/sus_results_demo.csv")
sus_data_melt <- melt_response_data(data = sus_data)
get_sus_stats(data = sus_data_melt)[["mean"]]

get_sus_questions(language = "en", questions_only = T)
get_all_systems(language = "en")

## Update datasets:
# source("./data-raw/questions.R")
