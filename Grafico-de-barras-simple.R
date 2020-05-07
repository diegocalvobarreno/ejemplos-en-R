# --------------------------------------------------------------
# Gráfico de barras simple
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

datos <- data.frame(nombres = c("A", "B", "C"), valores = c(2.3, 1.9, 3.2))

ggplot(datos, aes(nombres, valores)) +
  geom_col(fill = rgb(0.2, 0.2, 1, 0.3), color = "blue") +
  theme_minimal()


# --------------------------------------------------------------
# Gráfico de barras simple (contando elementos)
# --------------------------------------------------------------

nombre <- c("A","B","C","A","B","C","D","A","A","B")
datos <- data.frame(nombre=nombre)

qplot(nombre, data=datos,
      fill=I("blue"), 
      col=I("cornflowerblue"),
      alpha=I(.2)) +
  labs(
    x = "nombre",
    y = "frecuencia",
    caption = ""
  ) + 
  scale_x_discrete(labels=c("A","B","C","D")) + # Ordena
  theme_minimal()

# --------------------------------------------------------------
# Gráfico de barras simple (forzando el orden)
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar paquete de manipulación de dataframes
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

grupo <- factor(c("A","B","C","D","E","F","G","H","I","J"))
valor <- c(8,4,3,2,5,6,7,1,9,10)
datos <- data.frame(grupo=grupo,valor=valor)
datos <- datos %>% 
  arrange(valor) %>%
  mutate(grupo = factor(grupo, levels = .$grupo))

ggplot(datos, aes(grupo, valor)) +
  geom_bar(stat = "identity",fill = rgb(0.2, 0.2, 1, 0.3), color = "blue") +
  coord_flip() + 
  theme_minimal()
