## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
##retrieve the inverse from the cache

## This function creates a special "matrix" object that can cache its inverse.
## This function also makes sure the input matrix is square matrix; if not, it will return "Invalid matrix"
makeCacheMatrix <- function(x = matrix()) {
  inverse <<- NULL
  if(nrow(x) != ncol(x)) {print("Invalid matrix")}
  else {inverse <<- solve(x)}
}

##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
##retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
  inverse <- x$makeCacheMatrix()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  solve(x)
}
