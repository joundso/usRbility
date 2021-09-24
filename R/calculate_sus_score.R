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
#'   and respondent.
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
#'   calculates the overall SUS score.
#' @param data (data.table) The table containing the results for each question
#'   and respondent.
#'
#' @return (data.table) The statistics about the results (min, max, mean,
#'   median, N).
#' @export
#'
get_sus_score_total <- function(data) {

}

get_sus_stats <- function(instance) {
  return(psych::describe(calculate_sus_score(instance = instance)))
}

get_sus_mean <- function(instance) {
  return(get_sus_stats(instance = instance)[["mean"]])
}

get_sus_n <- function(instance) {
  return(get_sus_stats(instance = instance)[["n"]])
}
