## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Esta funcion crea un objeto llamado matrix que puede alamacer en cache el inverso de la matriz 

makeCacheMatrix <- function(x = matrix()) {
    inversa <- NULL
    set <- function(z){
      x <<- z
      inversa <<- NULL
    }
    get <- function() x
    setInverse <- function(solveMatrix) inversa <<- solveMatrix
    getInverse <- function() inversa
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }


## Write a short comment describing this function
##Calculo de la inversa de una matriz

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inversa <- x$getInverse()
  if(!is.null(inversa)){
    message("Estos son datos almacenados en cache")
    return(inversa)
  }
  datos <- x$get()
  inversa <- solve(datos)
  x$setInverse(inversa)
  inversa    
}
