##  The two functions below  create a special object that stores a inversible square matrix and caches its inverse.


## The function makeCacheMatrix create the list that contain the follwing function:
#1.  set the value of the matrix
#2.  get the value of the matrix
#3.  set the value of the inverse of the matrix
#4.  get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    set<-function(y){
        x<<-y
        inv<<-NULL
    }
get<-function() x
setInverse <- function(inverse) inv <<-inverse
getInverse <- function() inv
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function
## The function cacheSolve compute the inverse of matrix retieve by the function makeCacheMatrix. 
## If the inverse exist already it skyps the computation and return the inverse matrix from the cache, but when the matrix inverse
## doesnot exist it compute the inverse and set the inverse matrix in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getInverse()
if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
}
data<-x$get()
inv<-solve(data,...)
x$setInverse(inv)
inv
}
