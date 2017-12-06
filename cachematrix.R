## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {


    inv <- NULL

        set <- function(y) {
            x <<- y
            inv <<- NULL
    }

   
    get <- function() x

    # Manually set the inverse
    setinverse <- function(inverse) inv <<- inverse

    # Get the inverse
    getinverse <- function() inv

    # Encapsulate into a list
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)	
        
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        
         inv <- x$getinverse()

    
    if(!is.null(inv)) {
    	# Return the computed inverse		
        message("Getting cached matrix....")
        return(inv)
    }

     data <- x$get()

    # Find the inverse
    inv <- solve(data, ...)

    # Cache the resultant matrix 
    x$setinverse(inv)

    # returns the inverse 
    inv    
}
