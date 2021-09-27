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


#' @title Get all questions of a specific questionnaire.
#' @description Get all questions of a specific questionnaire.
#' @param language (string) The language of the questions to display.
#'   Defaults to "en".
#' @param sys (string) The name of the system you want the questions of.
#'   Non-case sensitive. The get all available systems, run `get_all_systems()`.
#' @param questions_only (boolean, default = FALSE) Skip the numbers of the
#'   questions and only return the questions itself in the right order?

#' @return (data.table) All SUS questions in the right ordering.
#'   Ordering matters! If `questions_only = TRUE` was set, the result will be
#'   an ordered list instead of a data.table.
#' @export
#'
get_questions <-
  function(sys,
           language = "en",
           questions_only = FALSE) {
    questions <- usRbility::questions

    res <-
      questions[get("lang") == language &
                  tolower(get("system")) == tolower(sys), ]
    res <- res[order(get("id_official"))]
    if (questions_only) {
      return(res[["question"]])
    } else {
      return(res)
    }
  }
