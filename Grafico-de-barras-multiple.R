# --------------------------------------------------------------
# Gráfico de barras horizontales múltiples 
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

nombre <- c("A","B","C")
valor <- c(1,2,3)

datos <- data.frame(nombre=nombre, valor=valor)

ggplot() + 
  geom_bar(data=datos,
           aes(x=nombre, y=valor), 
           stat='identity', 
           position='dodge') +
  coord_flip() + # Poner barras horizontales
  theme_minimal()


# --------------------------------------------------------------
# Gráfico de barras horizontales múltiples discretizado por tipo
# --------------------------------------------------------------

nombre <- c("A","B","C","A","B","C")
tipo <- c(rep("si",3),rep("no",3))
valor <- c(1,2,3,4,5,6)

datos <- data.frame(nombre=nombre,tipo=tipo, valor=valor)

ggplot() + 
  geom_bar(data=datos,
           aes(x=nombre, y=valor, fill=tipo), 
           stat='identity', 
           position='dodge') +
  coord_flip() + # Poner barras horizontales
  theme_minimal()


# --------------------------------------------------------------
# Mismo gráfico, pero sumando los valores de cada bloque
# --------------------------------------------------------------


library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

sexo <- c(rep("Hombre",20),rep("Mujer",20),rep("Hombre",20),rep("Mujer",20))
valor <- 1:80
grupo <- c(rep("España",25),rep("Italia",25),rep("portugal",30))

datos <- data.frame(sexo=sexo, valor=valor, grupo=grupo)

datos <- datos %>%
  group_by(grupo, sexo) %>%
  summarise(valor = sum(valor, na.rm = TRUE)) 

ggplot(datos, aes(x=grupo, y=valor, fill = sexo)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  theme_minimal()
