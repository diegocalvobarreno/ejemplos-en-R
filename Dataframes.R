
# --------------------------------------------------------------
# DATAFRAMES
# --------------------------------------------------------------

# --------------------------------------------------------------
# Crear dataframes - a partir de listas y/o matrices
# --------------------------------------------------------------

# Crear un dataframe a partir de una matriz
matriz<-matrix(c(20,65,174,22,70,180,19,68,170),nrow=3,byrow=T)
dimnames(matriz)<-list(c("peter","juan","maria"), c("edad","peso","altura"))

provincia<-c("cadiz","soria","madrid")
datos<-data.frame(matriz,provincia)
datos


# --------------------------------------------------------------
# Crear un dataframe a partir de vectores
# --------------------------------------------------------------

nombre <- c("Andres","Sonia","Carlos","Julia")
grupo <- factor(c("A","B","C","A"))
valor <- c(8,4,3,2)

datos <- data.frame(nombre= nombre, grupo=grupo, nuevo_valor=valor)

datos # Visualizar el dataframe


# --------------------------------------------------------------
# Funciones
# --------------------------------------------------------------

dim(datos) # Determinar las dimensiones del dataframe

dimnames(datos)<-list(c("Num1","Num2","Num3","Num4"), 
                      c("nombre","grupo","valor"))  # Poner nombres a las filas y a las columnas

dimnames(datos) # Motrar los nombres de filas y columnas


colnames(datos) # Motrar los nombres de columnas


rownames(datos) # Motrar los nombres de filas


mode(datos) # Mostrar el tipo de datos


ncol(datos) # Contar el número de columnas


nrow(datos) # Contar el número de filas


is.data.frame(datos) # Función para determinar si el elemento es un dataframe


datos[1,2] # Acceder a la posición (1,2) del dataframe


datos[,3] # Mostar la columna 3


datos[1,] # Mostar la fila 1


