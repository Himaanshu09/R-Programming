pollutantmean <- function(directory, pollutant, id = 1:332) 
{
  setwd(directory)
  x <- NULL   
  for (i in id) 
  {
    y <- read.csv(sprintf("%03d.csv", i))
    x <- c(x,y[[pollutant]])                }
  setwd("C:/Users/Himaanshu.Gauba/Downloads")
  mean(x, na.rm = TRUE)
}