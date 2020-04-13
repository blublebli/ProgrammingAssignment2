## Put comments here that give an overall description of what your
## functions do

## This function will create a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
        x <<- y
        inv <<- NULL
}
get <- function() x
setInverse <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function will compute the inverse of the special "matrix" returned by makeCacheMatrix...
##If the inverse has alread been calculated and the matrix hasnt changed, the cachesolve should...
##...retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message ("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}


SHA bf8d004deb0d2d5c4103bedf441ed97d556f5abf
