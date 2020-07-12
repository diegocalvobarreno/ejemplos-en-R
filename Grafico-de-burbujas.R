
# --------------------------------------------------------------
# Gráfico de burbujas (cambiando color y tamaño)
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"


set.seed(1234)
nombre <- c("A","B","C","D","E","F","G","H")
valor.x <- rnorm(8,25,10) # Número de elementos, media y desviación estandar
valor.y <- rnorm(8,25,10)
tamano <- rnorm(8,20,10)
color <- c(rep("blue",2), rep("red",2),rep("orange",2),rep("yellow",2))
datos <- data.frame(nombre, valor.x, valor.y, tamano, color)

ggplot(datos, aes(x = valor.x, y = valor.y, label = nombre)) +
  geom_point(aes(size = tamano, colour = color)) + 
  geom_text(hjust = -1.5, size = 3) +
  theme_minimal() +
  scale_color_manual(values = c("blue","red","orange","yellow"),
                     labels = c("azul", "rojo","naranja","amarillo"))
