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



#' Count the replicates in the column
#'
#' @param data the matrix data that will be used.
#' @param colName Column name that will be counted the replicates.
#'
#' @return
#' @export
#'
#' @examples
countReplicates <- function (data, colName){

  # Assuming 'grouping_variable' is the variable you want to use for grouping
  data <- data %>%
    group_by_at(vars(colName)) %>%
    mutate(!!colName := row_number())

}

