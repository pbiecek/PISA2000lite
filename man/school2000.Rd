\name{school2000}
\alias{school2000}
\alias{school2000dict}
\docType{data}
\title{Data from school questionnaire PISA 2000}
\description{
  The english version of school questionnaire PISA 2000 is avaliable here \code{http://pisa2000.acer.edu.au/downloads/PISA2000_School_Questionnaire.doc}.

  There is 8526 rows/schools and 169 columns/variables.

  The \code{school2000} dataset is imported from this file \code{http://pisa2000.acer.edu.au/downloads/intscho.zip}.

  The codebook for this dataset is avaliable here \code{http://pisa2000.acer.edu.au/downloads/intscho.pdf}.
  
  The variable names are avaliable in the named vector \code{school2000dicts}.
}
\usage{data(school2000)}
\references{
  http://pisa2000.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{math2000}}, \code{\link{read2000}}, \code{\link{scie2000}}, \code{\link{item2009}}}
\examples{
library(PISA2000lite)

# first few rows
school2000[1:5,1:5]
head(school2000dict)
}
\keyword{datasets}
