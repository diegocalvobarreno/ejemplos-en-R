
# --------------------------------------------------------------
# Cargar datos del dataframe
# --------------------------------------------------------------
id <- c(1,2,3,4,5,6,7,8,9)
valor <- c(7,1,12,4,5,16,71,38,19)
categoria <- c(rep("bajo",3),rep("medio",3),rep("alto",3))
datos <- data.frame(id=id, valor=valor, categoria=categoria)
head(datos, n=9)

# --------------------------------------------------------------
# Ordenar dataframe por una columna
# --------------------------------------------------------------
datos <- datos[with(datos, order(datos$valor)), ] # Orden directo
datos

# --------------------------------------------------------------
# Ordenar dataframe por una columna en orden inverso
# --------------------------------------------------------------
datos <- datos[with(datos, order(-datos$valor)), ] # Orden inverso
datos

# --------------------------------------------------------------
# Ordenar dataframe por una columna (Forma Simple)
# --------------------------------------------------------------
#install.packages("dplyr") # Instalar paquete de manipulación de dataframes
library(dplyr)

datos <- arrange(datos, valor) # Orden directo
datos

# --------------------------------------------------------------
# Ordenar dataframe por una columna en orden inverso (Forma Simple)
# --------------------------------------------------------------
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

datos <- arrange(datos, -valor) # Orden inverso
datos

# --------------------------------------------------------------
# Ordenar un solo vector
# --------------------------------------------------------------

vector <- datos$valor
vector <-sort(vector, decreasing=FALSE)  # Orden directo
vector

# --------------------------------------------------------------
# Ordenar un solo vector  en orden inverso
# --------------------------------------------------------------
vector <-sort(vector, decreasing=TRUE) # Orden inverso
vector
