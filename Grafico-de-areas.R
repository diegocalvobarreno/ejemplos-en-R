# --------------------------------------------------------------
# Gráfico de áreas
# --------------------------------------------------------------

# Definir el conjunto de datos a utilizar
tipo <- c("A","A","A","A","A",
          "B","B","B","B","B",
          "C","C","C","C","C")

anio <- c(2020,2021,2022,2023,2024,
          2020,2021,2022,2023,2024,
          2020,2021,2022,2023,2024)

set.seed(1234)
valor <- rnorm(15,25,10) # 15 Elementos de media 25 y desvición típica 10

datos <- data.frame(tipo, anio, valor)


#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

ggplot(datos, aes(x = anio, y = valor)) + 
  geom_area(aes(fill = tipo)) + # Relleno
  theme_minimal() 
