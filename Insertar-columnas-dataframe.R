
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
# Insertar columnas a un dataframe aplicando transformaciones
# --------------------------------------------------------------

anio <- as.integer(as.character(Sys.Date(), format="%Y"))

mutate(datos, 
       anio_nacimiento = anio - edad # Calcular el año de nacimiento
)


# --------------------------------------------------------------
# Suma acumulativa de una columnas de un dataframe aplicando transformaciones
# --------------------------------------------------------------
mutate(datos, acumular_edad = cumsum(edad))


# --------------------------------------------------------------
# Crear un nuevo dataframe con las columnas nuevas transformadas
# --------------------------------------------------------------

transmute(datos, 
       anio_nacimiento = anio - edad # Calcular el año de nacimiento
)

