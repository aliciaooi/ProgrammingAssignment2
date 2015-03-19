## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function 

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix<- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}
# Find out if square matrix
#isSymmetric(object, ...)

# If yes then use Solve
#if true
#solve(x)

# If not squared matrix 

#elseif false
#solve(crossprod(x))

## Function cacheSolve looks to see if inverse of cached matrix has been calculated and returns it from cache
## If not found, it calculates the inverse of matric and stores in the cache via the setmatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
        
        
