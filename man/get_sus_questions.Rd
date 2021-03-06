% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_sus_questions.R
\name{get_sus_questions}
\alias{get_sus_questions}
\title{Get all SUS questions.}
\usage{
get_sus_questions(language = "en", questions_only = FALSE)
}
\arguments{
\item{language}{(string) The language of the questions to display.
Defaults to "en".}

\item{questions_only}{(boolean, default = FALSE) Skip the numbers of the
questions and only return the questions itself in the right order?}
}
\value{
(data.table) All SUS questions in the right ordering.
  Ordering matters! If `questions_only = TRUE` was set, the result will be
  an ordered list instead of a data.table.
}
\description{
Get all SUS questions
}
