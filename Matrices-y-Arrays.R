
# --------------------------------------------------------------
# MATRICES
# --------------------------------------------------------------

# --------------------------------------------------------------
# Declaración de matrices
# --------------------------------------------------------------

matrix(1:6) # Crear una matriz

matrix(1:6, nrow=2) # Crear una matriz con 2 filas

matrix(1:6, ncol=2) # Crear una matriz con 2 columnas


# --------------------------------------------------------------
# Funciones de matrices
# --------------------------------------------------------------

m <- matrix(1:6, nrow=2) # Crear una matriz

m # Visualizar la matriz


dim(m) # Determinar las dimensiones de la matriz


dimnames(m)<-list(c("edad","peso"), c("paco","juan","maria")) # Poner nombres a las filas y a las columnas


m # Visualizar la matriz


dimnames(m) # Motrar los nombres de filas y columnas


colnames(m) # Motrar los nombres de columnas


rownames(m) # Motrar los nombres de filas


mode(m) # Mostrar el tipo de datos


length(m) # Contar el número de elementos


is.matrix(m) # Función para determinar si el elemento es una matriz


m[1,2] # Acceder a la posición (1,2) de la matriz


m[,1] # Mostar la columna 1


m[1,] # Mostrar la fila 1


apply(m,1, mean) # Calcular media por filas


apply(m,2, mean) # Calcular media por columnas


apply(m,1, sum) # Acumular los valores por filas


apply(m,1, summary) # Sumarizar por filas


cbind(m,c(9,9)) # Añadir una nueva columna


rbind(m,c(9,9,9)) # Añadir una nueva fila



# --------------------------------------------------------------
# ARRAYS
# --------------------------------------------------------------

datos<-array(c(45,46,65,55,170,167,48,49,68,56,169,165),c(2,3,2)) 

datos

dimnames(datos)<-list(c("hombres","mujeres"),c("edad","peso","altura"), c("cadiz","soria"))

datos

apply(datos,1,mean) # Calcular media de la dimensión 1

apply(datos,2,mean) # Calcular media de la dimensión 2

apply(datos,3,mean) # Calcular media de la dimensión 3
