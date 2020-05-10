## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
j<-NULL ##initialize j to null
set<-function(y){
        x<<- y ##set value of x to the passed arguement in the function
        j<<-NULL
}
get<-function()x
setInverse<-function(inverse) j<<-inverse
getInverse<-function() j

list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        j<-x$getInverse()##getting the inverse
        if(!is.null(j)){ ##if inverse exists then directly return the cached data
                return(j)
        }
        mat<-x$get() ##else get inverse of the matrix
        j<-solve(mat,...)
        x$setInverse(j)
        j
}
