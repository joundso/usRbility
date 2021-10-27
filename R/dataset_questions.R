#' Questions of different usability scoring systems
#'
#' Questions of different usability scoring systems
#'
#' @format An object of class \code{"data.table"}.
#' \describe{
#'   \item{id_internal}{Internal incremental unique id.}
#'   \item{id_official}{Id used in the official representatoin of the questionnaire.}
#'   \item{question}{The text of the question itself. Might include a placeholder.}
#'   \item{lang}{The language of the current question. E.g. `de`or `en`.}
#'   \item{system}{The name of the system the question belongs to. E.g. `sus`or `health-itues`.}
#'   \item{category}{Some questionnaires cluster their questions in categories. If existent, it will be here.}
#'   ...
#' }
"questions"
