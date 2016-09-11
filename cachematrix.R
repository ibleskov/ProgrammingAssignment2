## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set_matrix <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get_matrix <- function() {x}
    set_inv_matrix <- function(inv_matrix) {inv <<- inv_matrix}
    get_inv_matrix <- function() {inv}
    list(set_matrix = set_matrix,
         get_matrix = get_matrix,
         set_inv_matrix = set_inv_matrix,
         get_inv_matrix = get_inv_matrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv <- x$get_inv_matrix()
    if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    M <- x$get_matrix()
    inv_matrix <- solve(M)
    x$set_inv_matrix(inv_matrix)
    inv_matrix
}
