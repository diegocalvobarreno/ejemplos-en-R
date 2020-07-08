

# --------------------------------------------------------------
# LISTAS
# --------------------------------------------------------------

lista <- list(1,2,3,4,5)

lista # Visualizar lista

lista[[1]] # Mostrar un elemento de la lista

lista[[9]] # Intentar mostrar un elemento de la lista que no existe.

names(lista) <- c("A","B","C","D","E") # Poner nombres a los elementos de la lista

lista[["A"]] # Mostrar un elemento de la lista

lista[["E"]] <- NULL # Eliminar un elemento de la lista



puntos <- list(x = cars[,1], y = cars[,2]) # Crear lista de listas

puntos[[1]][[1]] # Acceder a un elemento concreto de una sublista

plot(puntos) # Visualizar la lista de listas



familia <- list(padre="peter",   # Crear un lista con diferentes tipos de datos
                madre="maria", 
                numero.hijos=3, 
                nombre.hijos=c("juan","carlos","eva"),
                edades.hijos=c(7,5,3),
                ciudad="madrid")
