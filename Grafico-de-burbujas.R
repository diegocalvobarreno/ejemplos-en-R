
# --------------------------------------------------------------
# Gráfico de burbujas (cambiando color y tamaño)
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

tipo <- c("A","B","C","D","E","F","G","H")

set.seed(1234)
valor.x <- rnorm(8,25,10)
set.seed(4321)
valor.y <- rnorm(8,25,10)
tamano <- rnorm(8,20,30)
set.seed(1234)
color <- c(rep("blue",2), rep("red",2),rep("orange",2),rep("yellow",2))

datos <- data.frame(tipo, valor.x, valor.y, tamano, color)

library(ggplot2)

ggplot(datos, aes(x = valor.x, y = valor.y, label = tipo)) +
  geom_point(aes(size = tamano, colour = color)) + 
  geom_text(hjust = 1, size = 2) +
  theme_minimal()

