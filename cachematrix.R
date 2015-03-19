##Two functions makeCacheMatrix to creates a special "matrix" object that can cache its inverse and cacheSolve
## which tries to retrieve inverse value from cache and sets the cache if it is not found

## First function
## The makeMatrix function makes special matrix as a list containing function to
## 1. set value of matrix
## 2. get value of matrix
## 3. set inverse value of matrix
## 4. get inverse value of matrix

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



## Second Function cacheSolve looks to see if inverse of cached matrix has been calculated and returns it from cache
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
        
        
