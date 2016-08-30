## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m<-NULL
 
 ## Setting the matrix
  set<-function(y){
  x<<-y
  m<<-NULL
}

## Getting the matrix
get<-function() x

## Setting the inverse of the matrix
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m

## Returning list of the methods
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 m<-x$getmatrix()
 
 ## Return the inverse if its already set
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)     ##finding the inversw
    x$setmatrix(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
