

# --------------------------------------------------------------
# LISTAS
# --------------------------------------------------------------

lista <- list(1,2,3,4,5)

lista

lista[["A"]]

lista

names(lista) <- c("A","B","C","D","E")

lista[["E"]] <- NULL

puntos <- list(x = cars[,1], y = cars[,2])

puntos[[1]][[1]]

plot(puntos)

familia <- list(padre="peter", 
                madre="maria", 
                numero.hijos=3, 
                nombre.hijos=c("juan","carlos","eva"),
                edades.hijos=c(7,5,3),
                ciudad="madrid")


# --------------------------------------------------------------
# MATRICES
# --------------------------------------------------------------

# --------------------------------------------------------------
# Declaración de matrices
# --------------------------------------------------------------

matrix(1:6)

matrix(1:6, nrow=2)

matrix(1:6, ncol=2)


# --------------------------------------------------------------
# Funciones de matrices
# --------------------------------------------------------------

m <- matrix(1:6, nrow=2)

dim(m)


dimnames(m)<-list(c("edad","peso"), c("paco","juan","maria"))


dimnames(m)


colnames(m)


rownames(m)


mode(m)


length(m)


is.matrix(m)


m[1,2]


m[,1]


m[1,]


apply(m,1, mean)


apply(m,2, mean)


apply(m,1, sum)


apply(m,1, summary)


cbind(m,c(9,9)) 


rbind(m,c(9,9,9))


# --------------------------------------------------------------
# ARRAYS
# --------------------------------------------------------------

datos<-array(c(45,46,65,55,170,167,48,49,68,56,169,165),c(2,3,2)) 
dimnames(datos)<-list(c("hombres","mujeres"),c("edad","peso","altura"), c("cadiz","soria"))

datos

apply(datos,2,mean)

