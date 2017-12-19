x <- vector("numeric", length = 12)
x
m <- matrix(1:6, nrow=2, ncol=3)
m

dim(m)
class(dim(m))

# Convertir un vector a una matriz

v <- 1:10
v

dim(v) <- c(2,5)
v

# cbind() y rbind() pegar vectores en columnas y en filas:

x_ <- 5:8
y_ <- 12:15

cbind(x_,y_)
rbind(x_,y_)

# operaciones con vectores:

vectorUno <- 9:12
vectorDos <- 10:13

vectorUno + vectorDos

vectorUno > 10

# operaciones vectoriales con matrices:

x <- matrix(1:16, 4, 4)
y <- matrix(rep(5,16),4,4) #repite 5 16 veces
y

x+y

# multiplicación matricial:

x %*% y



