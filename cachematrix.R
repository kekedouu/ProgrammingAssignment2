## Put comments here that give an overall description of what your
## functions do
## This script will store a given square matrix and its inverse matirx in cache, 
## so that the following code can access it directly without re-computing it each time 



## Write a short comment describing this function
## the first function actually creates a list of four functions, to store, retrive the input matrix
## and store, retrieve the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y) {
	    x <<- y
            inv <<- NULL
     }
     get <- function() x
     setinv <- function(myinv) inv <<- myinv
     getinv <- function() inv
     list(set = set,
	  get = get,
	  setinv = setinv,
	  getinv = getinv)
}


## Write a short comment describing this function
## this function will call the first funtion and this is where the inverse matrix is actually computed


cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
     inv <- x$getinv()
     if(!is.null(inv)) {
	   message("getting cached data")
           return(inv)
     }
     data <- x$get()
     inv <- solve(data)
     x$setinv(inv)
     inv


}

