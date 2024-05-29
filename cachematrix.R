## The first function caches the inverse of a matrix,
## And the second function computes the inverse of the matrix that is returned by the first one

## the function creates a special object that is a matrix that can cache the inverse

makeCacheMatrix <- function(x = matrix()) {
         ## initialise
  i <-NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  ## get the matrix and make the inverse
  get <- function() x
  setInverse <- function(solveMatrix) i <<- solveMatrix
  getInverse <- function() i
  list(set = set, get= get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
