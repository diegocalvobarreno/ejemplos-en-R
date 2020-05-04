
# --------------------------------------------------------------
# Cargar datos para realzar el Gráfico de líneas simple
# --------------------------------------------------------------
anio <- c(2001:2015)
set.seed(1234)
valor <- rnorm(15,25,10)
datos <- data.frame( anio, valor)

#install.packages("ggplot2") # Instalar paquete de manipulación de dataframes
library(ggplot2)
ggplot(datos, aes(x=anio, y=valor )) + 
  geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()

# --------------------------------------------------------------
# Visualizar el Gráfico de líneas simple
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización
library(ggplot2)

ggplot(datos, aes(x=anio, y=valor )) + 
  geom_line(colour="red")  + 
  geom_point( size=2, shape=21, fill="white", colour="red") + 
  theme_minimal()


# --------------------------------------------------------------
# Cargar datos para realzar el Gráfico de líneas multiple
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


# --------------------------------------------------------------
# Visualizar el Gráfico de líneas simple
# --------------------------------------------------------------

library(ggplot2)
ggplot(datos, aes(x=anio, y=valor, group = tipo, colour =tipo )) + 
  geom_line()  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal()