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


## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          ## get inverse
  i <- x$getInverse()
  if(!is.null(i)){
    message("acquiring cached data")
    return(i)
  }
  ## get the matrix from the object
  data <- x$get()
  i <- solve(data)
  ## set inverse to object
  x$setInverse(i)
  ## return matrix
  i      
}
