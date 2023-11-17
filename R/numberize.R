#' Numberize Names
#'
#' @param data Data is the input matrix.
#' @param colName ColName is the column name to specify which column will be numberized.
#'
#' @return
#' @export
#'
#' @examples
NumberizeNames <- function(data, colName) {
  # Convert names to factors and then to integers
  colNum <- as.integer(factor(data[[colName]], levels = unique(data[[colName]])))

  # Replace names with numbers and assign to the user-specified column
  data[[colName]] <- colNum

  # Return the updated data
  return(data)
}


