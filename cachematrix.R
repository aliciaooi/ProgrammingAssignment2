## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

}
##test test test AO again
# test test test 2142

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- matrix(data, ...)
        x$setmatrix(m)
        m
}
        
        
