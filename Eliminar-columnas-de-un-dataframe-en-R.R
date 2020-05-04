
# http://www.diegocalvo.es/eliminar-columnas-dataframe-r/

# --------------------------------------------------------------
# Cargar datos del dataframe
# --------------------------------------------------------------
id <- c(1,2,3,4,5,6,7,8,9)
valor <- c(7,1,12,4,5,16,71,38,19)
categoria <- c(rep("bajo",3),rep("medio",3),rep("alto",3))
color <- c(rep("rojo",1),rep("azul",2),
          rep("naranja",2),rep("morado",1),
          rep("amarillo",2),rep("verde",1))
datos <- data.frame(id=id, valor=valor, categoria=categoria,color=color)
head(datos, n=9)

# --------------------------------------------------------------
# Eliminar columnas de un dataframe
# --------------------------------------------------------------

borrar <- c("valor","categoria")
datos2 <- datos[ , !(names(datos) %in% borrar)]
head(datos2, n=9)


# --------------------------------------------------------------
# Eliminar columnas de un dataframe de forma simple
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar paquete de manipulación de dataframes
library(dplyr)

datos2 <- select(datos, -valor, -categoria) # Forma simple 1
datos2 <- select(datos, id, valor, categoria) # Forma simple 2
head(datos2, n=9)
