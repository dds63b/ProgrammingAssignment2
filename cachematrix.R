## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#The first function, creates a special "vector", which is really a list containing a function to
#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean
makeCacheMatrix <- function(x = numeric()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function()inv 
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}
makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
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
        ## Return a matrix that is the inverse of 'x'
}
