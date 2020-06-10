
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
# Filtrar datos de un dataframe (forma farragosa)
# --------------------------------------------------------------
datos[datos$sexo == "hombre" & datos$pais == "francia" & edad>=18, ]



# --------------------------------------------------------------
# Filtrar datos de un dataframe (forma simple, ejemplo 1)
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar de manipulación de dataframes "dplyr"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

filter(datos, sexo == "hombre" , pais == "francia", edad >= 18) # AND Lógico


# --------------------------------------------------------------
# Filtrar datos de un dataframe (forma simple, ejemplo 2)
# --------------------------------------------------------------

filter(datos, ( sexo == "hombre" | pais == "francia" ) , edad >= 18) # OR y AND Lógico


# --------------------------------------------------------------
# Filtrar datos de un dataframe (forma simple, ejemplo 3)
# --------------------------------------------------------------

filter(datos, xor( sexo == "hombre", pais == "francia") , edad >= 18) # XOR y AND Lógico



# --------------------------------------------------------------
# Filtrar datos de un dataframe (forma simple, ejemplo 4)
# --------------------------------------------------------------
filter(datos, sexo != "hombre", pais %in% c("francia", "italia")) # Negación y Contenido en un grupo


# --------------------------------------------------------------
# Filtrar datos de un dataframe (pipe %>%, ejemplo 5)
# --------------------------------------------------------------
datos %>% filter(row_number() <= 4) # Seleccinar n elementos
