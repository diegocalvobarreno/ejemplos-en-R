
# --------------------------------------------------------------
# Cargar datos del dataframe
# --------------------------------------------------------------

# Conjunto de datos 1
id1 <- c (1:6)
valor1 <- c("A","B","C","D","E","F")
datos1 <- data.frame(id=id1,valor1= valor1)
head(datos1)


# Conjunto de datos 2
id2 <- c (1,2,3,NA,4,7)
valor2 <- c(rep("francia",2),rep("italia",2),rep("portugal",2))
datos2 <- data.frame(id=id2,valor2= valor2)
head(datos2)



# --------------------------------------------------------------
# Unir los datos de los dos dataframe
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar de manipulación de dataframes "dplyr"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

join <- datos1 %>% left_join(datos2, by="id") # Unir por la izquierda
head(join, n= 10)

join <- datos1 %>% right_join(datos2, by="id") # Unir por la derecha
head(join, n= 10)


join <- datos1 %>% full_join(datos2, by="id") # Unir dataframes completos
head(join, n= 10)


join <- datos1 %>% inner_join(datos2, by="id")  # Seleccionar la intersección de los dataframes
head(join, n= 10)



