
# --------------------------------------------------------------
# Gráfico de dispersión básico
# --------------------------------------------------------------

x = c(1,3,4,2,5,6,3,2,5,3)
y = c(5,4,3,1,5,1,2,4,1,3)

qplot(x,y) + theme_minimal()


# --------------------------------------------------------------
# Gráfico de dispersión con múltiples leyendas
# --------------------------------------------------------------

install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

x = c(1,3,4,2,5,6,3,2,5,3)
y = c(5,4,3,1,5,1,2,4,1,3)
color = c("red","red","red","red","red","blue","blue","blue","blue","blue")
forma = c(1,2,0,1,1,0,0,2,1,1)
nombre = c("A","B","C","D","E","A","B","C","D","E")
datos <- data.frame(x,y,color,forma,nombre)

ggplot(datos, aes(x = x, y = y, color = factor(color), shape = factor(forma))) +
  geom_point( size=10 ) + 
  theme_minimal() +
  geom_text(aes(label=nombre), color="gray30" ) +
  labs(shape = "Formas", color = "Colores") +
  xlab("Nombre eje X") +
  ylab("Nombre eje Y") +
  scale_color_manual(values = c("red","blue"),
                     labels = c("color rojo", "color azul"))+
  scale_shape_manual(values= c(0,1,2),
                     labels = c("Cuadrado","Circulo","Triangulo")) +
  guides(colour = guide_legend(override.aes = list(shape = "_")))
