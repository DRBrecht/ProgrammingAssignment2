## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



makeCacheMatrix <- function(x = matrix()) {

		# Following the same format as the assignment example
		# Creating a makeCacheMatrix object will consist of
		# four functions encapsulated in a list
		# 1. set the matrix
		# 2. get the matrix
		# 3. set the inverse of the matrix
		# 4. get the inverse of the matrix

		# Initially set to NULL
		# Changes when the user sets the value
        inv <- NULL

		# set function
   		# Sets the matrix itself but not the inverse
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }

		# get function
    		# Gets the matrix itself but not the inverse
        get <- function() x

		# Manually set the inverse
        setInverse <- function(inverse) inv <<- inverse

		# Get the inverse
        getInverse <- function() inv

		# Encapsulate into a list
        list(set = set, 
	     get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'

        inv <- x$getInverse()

	# If it has:
        if(!is.null(inv)) {
		# Return the computed inverse
                message("getting cached data")
                return(inv)
        }

	# If it doesn't have:
    	# Get the matrix itself
        data <- x$get()

	#Compute the inverse
        inv <- solve(data, ...)

	#Cache that result 
        x$setInverse(inv)

	#Return the new, cached result
        inv
}


