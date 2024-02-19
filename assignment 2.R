makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  setMatrix <- function(newMatrix) {
    x <<- newMatrix
    inv <<- NULL 
  }
  
  getMatrix <- function() {
    x
  }
  
  setInverse <- function(newInverse) {
    inv <<- newInverse
  }
  
  getInverse <- function() {
    inv
  }
  
  list(setMatrix = setMatrix,
       getMatrix = getMatrix,
       setInverse = setInverse,
       getInverse = getInverse)
}

myMatrix <- makeCacheMatrix(matrix(c(1, 2, 3, 4), nrow = 2))

myMatrix$getMatrix()

