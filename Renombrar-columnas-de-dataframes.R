
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
# Renombrar columnas de un dataframe
# --------------------------------------------------------------

datos <- rename(datos, nuevo_nombre=nombre, nueva_edad = edad)
datos
