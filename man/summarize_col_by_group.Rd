% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarize_col_by_group.R
\name{summarize_col_by_group}
\alias{summarize_col_by_group}
\title{Summarize a column by a group}
\usage{
summarize_col_by_group(df, group_col, summary_col)
}
\arguments{
\item{df}{The data we will manipulate.}

\item{group_col}{The column the data should be grouped by.}

\item{summary_col}{The column statistics should be calculated for.}
}
\value{
A new data frame with the summarized statistics including the average, maximum and minimum of the summary column.
}
\description{
Summarize a column by a group
}
\details{
This function groups the data by a specified column and calculates statistics for another specified column.
}
\examples{
# Example 1: data with no NA
data_with_no_na <- data.frame(
  group = c("a", "b", "b"),
  summary = c(1, 2, 3)
)
summarize_col_by_group(data_with_no_na, group_col = "group", summary_col = "summary")

# Example 2: data with NA
data_with_na <- data.frame(
  group = c("a", "b", "b"),
  summary = c(NA, NA, 3)
)
summarize_col_by_group(data_with_na, group_col = "group", summary_col = "summary")
}
