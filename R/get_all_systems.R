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


#' @title Get all systems currently implemented
#' @description Get all systems currently implemented. If no language is
#'   supplied here, all systems will be shown (independent of their language).
#'   Otherwise (if a language is supplied), the result will only show the
#'   systems implemented for the given language.
#' @inheritParams get_questions
#' @return (list) All currently implemented usability systems
#' @export
#'
get_all_systems <- function(language = NULL) {
  questions <- usRbility::questions
  if (!is.null(language)) {
    return(unique(questions[get("lang") == language][["system"]]))
  } else {
    return(unique(questions[["system"]]))
  }
}
