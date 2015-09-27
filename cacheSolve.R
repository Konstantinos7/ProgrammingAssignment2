cacheSolve <- function(x, ...) {
        inv_mat <- x$getinv()
        if(!is.null(inv_mat)) {
                message("getting cached data")
                return(inv_mat)
        }
        dat <- x$get()
        inv_mat <- solve(dat, ...)
        x$setinv(inv_mat)
        inv_mat
}
