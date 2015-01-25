## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#The first function, creates a special "vector", which is really a list containing a function to

makeCacheMatrix <- function(x = numeric()) {
        inv <- NULL

#set the value of the vector
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }

 #get the value of the vector
       get <- function() x

 #set the value of the inverse
       setinv <- function(inverse) inv <<- inverse

 #get the value of the inverse
       getinv <- function()inv 
       list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}
makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

## Get inverse value from cache if it exists 
       inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
## If cache is blank calculate inverse 
        inv <- solve(data)
        x$setinv(inv)
## Return a matrix that is the inverse of 'x'
       inv 
}
