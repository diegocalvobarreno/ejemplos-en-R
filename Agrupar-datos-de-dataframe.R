

# --------------------------------------------------------------
# Cargar datos del dataframe
# --------------------------------------------------------------

sexo <- c(rep("hombre",5),rep("mujer",5))
edad <- c (25,14,25,76,12,90,65,45,56,43)
pais <- c(rep("francia",3),rep("italia",3),rep("portugal",4))

datos <- data.frame(sexo=sexo,edad=edad,pais=pais)
head(datos, n=10)


# --------------------------------------------------------------
# Agrupar datos de un dataframe (forma 1) - sentencias sueltas
# --------------------------------------------------------------
datos2 <- group_by(datos, pais)
summarise(datos2, media.edad = mean(edad, na.rm = TRUE))


# --------------------------------------------------------------
# Agrupar datos de un dataframe (forma 2) - sentencias anidadas
# --------------------------------------------------------------
filter(
  summarise(
    select(
      group_by(datos, pais),
      edad:pais # Necesario para que nos considere la agrupoación como queremos
    ),
    media.edad = mean(edad, na.rm = TRUE)
  )
)


# --------------------------------------------------------------
# Agrupar datos de un dataframe (forma 3) - Tuberias o PIPES
# --------------------------------------------------------------

datos %>%
  group_by(pais) %>%
  select(sexo:pais) %>%
  summarise(media.edad = mean(edad, na.rm = TRUE)) 
