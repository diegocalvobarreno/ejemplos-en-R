# --------------------------------------------------------------
# Gráfico de áreas simple
# --------------------------------------------------------------

tipo <- c("A","A","A","A","A",
          "B","B","B","B","B",
          "C","C","C","C","C")

anio <- c(2000,2001,2002,2003,2004,
          2000,2001,2002,2003,2004,
          2000,2001,2002,2003,2004)

set.seed(1234)
valor <- rnorm(15,25,10)

datos <- data.frame(tipo, anio, valor)

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

ggplot(datos, aes(anio, valor)) + geom_area(aes(fill = tipo)) +
  theme_minimal()