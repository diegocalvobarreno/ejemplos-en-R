
#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

#install.packages("scales") # Instalar paquete de visualización gráfica
library(scales) # Cargar la librería gráfica "scales"


categoria <- c("A","B","C") 
valor <- c(40,60,100)

datos <- data.frame(valor, categoria)

datos$porcentaje <- percent(datos$valor / sum(datos$valor))

datos$categoria <- factor(datos$categoria, levels = na.omit(as.character(datos$categoria)))
datos$fraccion <- datos$valor/sum(datos$valor) 
datos$particion <- 1 - (cumsum(datos$fraccion) - datos$fraccion/2)


ggplot(datos, aes(x = 1, y = fraccion, fill=categoria, label = fraccion)) +
  geom_col(width = 1) + 
  coord_polar(theta='y') +
  theme_minimal() + 
  scale_y_continuous(
    breaks=datos$particion,
    labels=datos$porcentaje
  ) +
  theme(axis.line.y = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank())

