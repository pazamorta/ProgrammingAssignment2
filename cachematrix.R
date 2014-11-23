## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
## Set the value of the matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
## Get the value of the matrix
    get <- function() x

## Set the value of the inverse
    setinverse <- function(solve) m <<- solve

## Get the value of the inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    ## Check if inverse has already been calculated
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
    
    ## Return cached value
        return(m)
    }
    
    ## Else calculate the inverse
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}