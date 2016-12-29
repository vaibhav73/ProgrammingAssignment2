## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function creates a list containing functions for
#1)setting the value of the matrix
#2)getting the value of the matrix
#3)setting the value of the inverse of matrix
#4)getting the value of the inverse of matrix

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

  #This functions returns inverse of a matrix
  #First of all it checks whether the inverse has already been computed or not
  #If inverse is already computed, it gets the result and skips computation
  #Else it computes the inverse and sets the value in the cache via set inverse function
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
  
