
# --------------------------------------------------------------
# Cargar librerias
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar librería de manipulación de dataframes "dplyr"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

#install.packages("dplyr") # Instalar de librería de manipulación de cadenas de caracteres
library(stringr) # Cargar librería de manipulación de cadenas de caracteres


# --------------------------------------------------------------
# Cargar dataframe
# --------------------------------------------------------------

nombre <- c("A","B","C","D","E","F","G","H","I","J")
sexo <- c(rep("man",5),rep("woman",5))
edad <- c (25,14,25,76,12,90,65,45,56,43)
pais <- c(rep("spain",3),rep("italy",3),rep("portugal",4))

datos <- data.frame(nombre=nombre,sexo=sexo,edad=edad,pais=pais)


# --------------------------------------------------------------
# Insertar columna a un dataframe
# --------------------------------------------------------------

datos <- mutate(datos, 
       nacimiento = 2017 - edad
)

head(datos)

# --------------------------------------------------------------
# Insertar columna a un dataframe quitando el resto de columnas
# --------------------------------------------------------------

datos2 <- transmute(datos, 
                nombre_minus =  str_to_lower(nombre),  
                nacimiento = 2017 - edad
)

head(datos2)
