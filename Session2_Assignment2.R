# Read multiple json files into a dataframe

install.packages("rjson")
library(rjson)
path="C:/Users/gayuv/AcadGild/Assignments/Session2_Intro2R/json"
fileNames <- list.files(path,pattern="*.json",full.names = TRUE )
print(fileNames)

studentNames <- c()
for (i in fileNames){
  studentName <- fromJSON(file=i)
  studentNames <- c(studentNames,studentName)
}
dataout <- as.data.frame(studentNames) 
dataout

# Read given json into a dataFrame

install.packages("jsonlite")

js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'

library(jsonlite)
out <- purrr::map_df(js, function(x) { 
  purrr::map(jsonlite::fromJSON(x), function(y) ifelse(is.null(y), NA, y)) 
})

View(out)

# provide example script for binning
install.packages("bda")

library(bda)
y <- c(1:50)
y
x <- 14.5 + c(0:length(y))
x
out1 <- binning(counts=y, breaks=x)
out1



