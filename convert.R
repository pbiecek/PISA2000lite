#
# This function extracts information from sav file and save two rda files with data and colnames
#

library(foreign)

prepare <- function(dataset, name) {
  name2 <- paste(name, "dict",sep="")
  colnames(dataset) <- toupper(colnames(dataset))
  for (i in 1:ncol(dataset))
    if (class(dataset[,i]) == "factor")
      dataset[,i] <- factor(dataset[,i])
  
  dict <- attributes(dataset)$variable.labels
  names(dict) <- toupper(names(dict))
  assign(x=name2, value=dict)
  assign(x=name, value=dataset)
  
  save(list=name2, file=paste(name2, ".rda", sep=""), compression_level=9, compress="bzip2")
  save(list=name, file=paste(name, ".rda", sep=""), compression_level=9, compress="bzip2")
}

#
# School and School dict
#

school2000 <- read.spss("school.sav", to.data.frame=TRUE)
prepare(school2000, "school2000")

#
# Not all students tak all areas
# this is why there are three datasets
#

math2000 <- read.spss("math.sav", to.data.frame=TRUE)
prepare(math2000, "math2000")

read2000 <- read.spss("read.sav", to.data.frame=TRUE)
prepare(read2000, "read2000")

scie2000 <- read.spss("scie.sav", to.data.frame=TRUE)
prepare(scie2000, "scie2000")

#
# cognitive items
# and escs 
#

item2000 <- read.spss("cognitive.sav", to.data.frame=TRUE)
prepare(item2000, "item2000")

escs2000 <- read.spss("escs.sav", to.data.frame=TRUE)
prepare(escs2000, "escs2000")

