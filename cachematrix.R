## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Input: a matrix to cache inverse
## Functions
## The set function is a function to set up the matrix
## The get function is a function to get the matrix
## The get_inverse  is a function to get the inverse of the matrix
## The set_inverse is a function to set the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL ## Initialize the inverse as NULL
  set <- function(new_matrix){
    x <<- new_matrix
    i <<- NULL
  }
  get <- function() x
  get_inverse <- function() i
  set_inverse <- function(new_inverse) i <<- new_inverse
  list(set = set, get = get, get_inverse = get_inverse, set_inverse = set_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$get_inverse()
  if (!is.null(i)){
    message("getting cached inverse")
    return(i)
  }
  data <- x$get()
  new_inverse <- solve(data)
  x$set_inverse(new_inverse)
  return(new_inverse)
}
