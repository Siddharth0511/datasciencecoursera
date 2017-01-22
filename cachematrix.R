## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
  m<-matrix(,nrow=nrow(x),ncol=ncol(x))
  set <-function(y)
  {
  x<<-y
  m<<-matrix(,nrow=nrow(x),ncol=ncol(x))
  }
  get<-function() x
  setinverse<-function(inverse) m<<-inverse
  getinverse<-function() m
  list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
  m<-x$getinverse()
  if(!all(is.na(m)))
    {
    message("getting cached data")
    return(m)
    }
  data<-x$get()
  m<-solve(data)
  x$setinverse(m)
  m
}
