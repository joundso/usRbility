# usRbility
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


#' @title Calculate the SUS score for each respondent.
#' @description Takes a table with the results to each question and
#'   calculates the SUS score for each respondent.
#' @param data (data.table) The table containing the results for each question
#'   and respondent. This data must be molten - so if your input is still
#'   very wide (with one column per respondent), first apply
#'   `melt_response_data` on the wide data to obtain long data instead.
#' @import data.table
#' @examples
#' \dontrun{
#' sus_data <- data.table::fread(file = "./data/sus_results_demo.csv")
#' sus_data_melt <- melt_response_data(data = sus_data)
#' get_sus_score_raw(data = sus_data_melt)
#' }
#'
#' @return (data.table) The SUS score for each respondent.
#' @export
#'
get_sus_score_raw <- function(data) {
  ## Calculate corrected values:
  ## - between 0 and 4
  ## - inverse the even question-values (because the question meaning is also
  ##   inverse.)
  # data[, "value_corrected" := NULL]
  ## These (even question numbers) are the inverse questions:
  data[get("id_official") %% 2 == 0, "value_corrected" := 5 - as.numeric(get("value"))]

  ## These (odd question numbers) are the normal, positive questions:
  data[get("id_official") %% 2 == 1, "value_corrected" := as.numeric(get("value")) - 1]

  res <- data[, sum(get("value_corrected")), by = "responder"]
  res[, "V1" := get("V1") * 2.5]
  data.table::setnames(x = res, old = "V1", new = "sus_score")

  # mean(res[["sus_score"]])
  # summary(res[["sus_score"]])
  # psych::describe(res[["sus_score"]])
  return(res[["sus_score"]])
}

#' @title Calculate the SUS score
#' @description Takes a table with the results to each question and
#'   calculates the stats over all respondents.
#' @inheritParams get_sus_score_raw
#' @return (data.table) The statistics about the results (min, max, mean,
#'   median, N).
#' @export
#' @examples
#' \dontrun{
#' sus_data <- data.table::fread(file = "./data/sus_results_demo.csv")
#' sus_data_melt <- melt_response_data(data = sus_data)
#' get_sus_stats(data = sus_data_melt)[["mean"]]
#' }
#'
get_sus_stats <- function(data) {
  return(psych::describe(get_sus_score_raw(data = data)))
}

#' @title Calculate the mean SUS score over multiple respondents
#' @description Takes a table with the results to each question and
#'   calculates the overall SUS score.
#' @inheritParams get_sus_score_raw
#' @return (numeric) The mean over all respondents
#' @export
#' @examples
#' \dontrun{
#' sus_data <- data.table::fread(file = "./data/sus_results_demo.csv")
#' sus_data_melt <- melt_response_data(data = sus_data)
#' get_sus_mean(data = sus_data_melt)
#' }
get_sus_mean <- function(data) {
  return(get_sus_stats(data = data)[["mean"]])
}
