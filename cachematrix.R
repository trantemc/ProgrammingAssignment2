## Week 3 programming assignment: write a pair of functions that cache the inverse of a matrix.

## The function below creates a matrix, gets matrix value, sets matrix inverse, and gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
    get <- function()x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m 
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function computes the inverse of the matrix created by the first function.
## If inverse already calculated, then retrieved from cache.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(m)
  m
}
