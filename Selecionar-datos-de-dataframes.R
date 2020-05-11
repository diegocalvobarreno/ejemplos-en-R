
# --------------------------------------------------------------
# Cargar datos del dataframe
# --------------------------------------------------------------

nombre <- c("Juan","Antonio","Victor","Diego","Pedro","Ana","Laura","Sara","Sonia","Patricia")
sexo <- c(rep("hombre",5),rep("mujer",5))
edad <- c (25,14,25,76,12,90,65,45,56,43)
pais <- c(rep("francia",3),rep("italia",3),rep("portugal",4))

datos <- data.frame(nombre=nombre,sexo=sexo,edad=edad,pais=pais)
head(datos, n=10)


# --------------------------------------------------------------
# Seleccionar datos de un dataframe (ejemplo 1)
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar de manipulación de dataframes "dplyr"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

select(datos, -nombre, -edad) # Todos excepto la columna nombre y la edad



# --------------------------------------------------------------
# Seleccionar datos de un dataframe (ejemplo 2)
# --------------------------------------------------------------

distinct(select(datos, -nombre, -edad)) # Quedarse con los datos no repetidos



# --------------------------------------------------------------
# Seleccionar datos de un dataframe (ejemplo 3)
# --------------------------------------------------------------

select(datos, nombre:edad) # Coger los datos desde la columna nombre a la columna edad



# --------------------------------------------------------------
# Seleccionar datos de un dataframe (ejemplo 4)
# --------------------------------------------------------------

select(datos, starts_with("n")) # Coger los datos las columnas que empiezan por "n"
