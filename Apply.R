
# Aplica una función a una matriz, lista o vector que se le pase como parámetro.

# Argumento 1: matriz, lista o vector

# Argumento 2: Puede tomar valores 1 o 2

  # 1 para operar sobre las columnas  
  # 2 para operar sobre las filas

# Argumento 3: Operador que se aplica sobre filas o columnas, según indique el argumento 2.
# Ejemplos de funciones: sum, mean, count,…

mi_matriz <- matrix(1:9,nrow = 3, ncol = 3)
mi_matriz

# Suma por filas
apply(mi_matriz,1,sum)

# Media por columnas
apply(mi_matriz,2,mean)



A <- matrix(1:4,nrow = 2, ncol = 2)
B <- matrix(5:8,nrow = 2, ncol = 2)
C <- matrix(9:12,nrow = 2, ncol = 2)
mi_lista <- list(A,B,C)
mi_lista

# Extraer el elemento de la posición (2,2)
lista_elemento_2_2 <- lapply(mi_lista,"[",2,2)
lista_elemento_2_2

# Sumar los elementos de cada una de las submatrices.
lista_suma <- lapply(mi_lista, sum, na.rm = TRUE)



