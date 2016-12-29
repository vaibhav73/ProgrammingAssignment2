## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a list of functions for
#1)setting the value of matrix
#2)getting the value of matrix
#3)setting the value of inverse of the matrix
#4)getting the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  in_verse <- NULL
  set <- function(y) {
    x <<- y
    in_verse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) in_verse <<- inverse
  getinverse <- function() in_verse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
#This funcrion returns the inverse of the matrix.
#First of all it checks whether the inverse has been computed or not
#IF inverse is computed,it gets the result and skips computation
#Else it computes the inverse and sets the value in the cache with setinverse function
cacheSolve <- function(x, ...) {
  in_verse <- x$getinverse()
  if(!is.null(in_verse)) {
    message("getting cached data.")
    return(in_verse)
  }
  data <- x$get()
  in_verse <- solve(data)
  x$setinverse(in_verse)
  in_verse
}
