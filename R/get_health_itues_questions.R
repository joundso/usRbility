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


#' @title Get all SUS questions.
#' @description Get all SUS questions
#' @inheritParams get_questions

#' @return (data.table) All SUS questions in the right ordering.
#'   Ordering matters! If `questions_only = TRUE` was set, the result will be
#'   an ordered list instead of a data.table.
#' @export
#'
get_health_itues_questions <-
  function(language = "en",
           questions_only = FALSE) {
    return(get_questions(
      sys = "health-itues",
      language = language,
      questions_only = questions_only
    ))
  }
