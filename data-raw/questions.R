questions <- data.table::fread(file = "./data-raw/questions.csv",
                               stringsAsFactors = FALSE)
# save(questions, file = "data/questions.RData")

usethis::use_data(questions, overwrite = TRUE)
