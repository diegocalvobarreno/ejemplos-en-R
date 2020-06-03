
# http://www.diegocalvo.es/eliminar-duplicados-dataframes-r/

# --------------------------------------------------------------
# Cargar datos del dataframe
# --------------------------------------------------------------

sexo <- c(rep("hombre",5),rep("mujer",5))
pais <- c(rep("francia",3),rep("italia",3),rep("portugal",4))

datos <- data.frame(sexo=sexo,pais=pais)
head(datos, n=10)


# --------------------------------------------------------------
# Obtener el vector de duplicados  (paquete base)
# --------------------------------------------------------------

duplicated(datos)


# --------------------------------------------------------------
# Eliminar duplicados de un dataframe (forma farragosa)
# --------------------------------------------------------------

datos[!duplicated(datos), ]



# --------------------------------------------------------------
# Contar duplicados de un dataframe (forma farragosa)
# --------------------------------------------------------------

nrow(datos[duplicated(datos), ])



# --------------------------------------------------------------
# Eliminar duplicados de un dataframe (forma simple, paquete base)
# --------------------------------------------------------------

unique(datos)



# --------------------------------------------------------------
# Seleccionar duplicados de un dataframe (forma farragosa)
# --------------------------------------------------------------

datos[duplicated(datos), ]


# --------------------------------------------------------------
# Eliminar duplicados de un dataframe (forma simple, paquete dplyr)
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar de manipulación de dataframes "dplyr"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

distinct(datos)


# --------------------------------------------------------------
# Selecionar los elementos no repetidos de una o varias columnas (forma simple, paquete dplyr)
# --------------------------------------------------------------

distinct(datos, pais)

