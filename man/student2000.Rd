\name{read2000}
\alias{math2000}
\alias{math2000dict}
\alias{read2000}
\alias{read2000dict}
\alias{scie2000}
\alias{scie2000dict} 
\alias{item2000}
\alias{item2000dict}
\alias{escs2000}
\alias{escs2000dict}
\docType{data}
\title{Data from student questionnaire PISA 2000 and other student level data}
\description{
  The english version of student questionnaire PISA 2009 is available here \code{http://pisa2000.acer.edu.au/downloads/PISA2000_Student_Questionnaire.doc}.
  There is 228784 rows/pupils and more than 420 columns/variables.

  Dataset \code{math2000} contains student questionnaire and mathematic achievement data file.
  Dataset \code{read2000} contains student questionnaire and reading achievement data file.
  Dataset \code{scie2000} contains student questionnaire and science achievement data file.
  Dataset \code{escs2000} contains student ESCS data.

  The \code{item2000} dataset containes item level data.

  The variable names are available in named vectors \code{math2000dict}, \code{read2000dict}, \code{scie2000dict}, \code{item2000dict}.
}
\usage{data(student2000)}
\references{
  http://pisa2000.acer.edu.au/downloads.php
}
\author{
 Dataset created by OECD, transformed by Przemyslaw Biecek
}
\seealso{\code{\link{school2000}}}
\examples{
library(PISA2000lite)

# first five rows
math2000[1:5,1:10]
head(math2000dict)
}
\keyword{datasets}
