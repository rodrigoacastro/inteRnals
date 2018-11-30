nm = 10^6

tsgen <- function(num=nm){
  return(tibble(a=runif(nm), b=runif(nm), c = runif(nm)))
}

ts =tsgen()

a  = list(runif(nm), runif(nm))
.Internal(inspect(a))

addField <- function(lst){
  n = length(lst)
  lst[[n+1]] <- runif(nm)
  lst
}
b = addField(a)
.Internal(inspect(b))

c = list(tsgen(), tsgen())
.Internal(inspect(c))
c[[2]][1,1]=3
.Internal(inspect(c))