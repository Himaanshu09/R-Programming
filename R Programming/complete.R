complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, full.names=TRUE)
  nobs_list <- vector()
  for (i in id) {
    dataset <- read.csv(files_list[i])
    naR <- na.omit(dataset)
    nobs_list <- c(nobs_list, nrow(naR))
  }
  
  data <- data.frame(id = id, nobs = nobs_list)
  data
}