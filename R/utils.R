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


#' @title Convert wide respondence data to long data.
#' @description Takes a wide table and converts it to a long data table.
#' @param data (data.table) The wide table containing the results for each
#'   question and respondent. Rows = Questions, Cols = responders.
#'
#' @return (data.table) The long table with the same information.
#' @export
#'
melt_response_data <- function(data) {
  if (length(names(data)) < 2) {
    print("There is no content in the dataset. Skipping")
    return(NULL)
  }
  result <-
    data.table::as.data.table(data.table::melt(data = data, id.vars = "id_official"))
  data.table::setnames(x = result, old = "variable", new = "responder")
  return(result)
}
