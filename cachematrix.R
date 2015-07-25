## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function.  As in the example, 4 functions are
## assigned to the master function makeCacheMatrix. The setmatrix and getmatrix are to cache
## the initial matrix that will be used in the next set of functions to invert the matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function.  Using the cached matrix from above, the solve
## function inverts the matrix and the result is printed to screen.

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
