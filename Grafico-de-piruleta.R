

# --------------------------------------------------------------
# Cargar librerias
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

#install.packages("dplyr") # Instalar de manipulación de dataframes "dplyr"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"


# --------------------------------------------------------------
# Crear el conjunto de datos
# --------------------------------------------------------------

grupo <- factor(c("A","B","C","D","E","F","G","H","I","J"))
valor <- c(8,4,3,2,5,6,7,1,9,10)
datos <- data.frame(grupo=grupo,valor=valor)

datos <- datos %>% 
  arrange(valor) %>% # Ordenar por valor
  top_n(6) %>% # Seleccionar los 6 primeros
  mutate(grupo = factor(grupo, levels = .$grupo)) # Refactorizar para reordenar


# --------------------------------------------------------------
# GRÁFICO DE PIRULETA 
# --------------------------------------------------------------

ggplot() +
  geom_point(data = datos, # Visualiza el cuerpo de las piruletas
             aes(x = valor, y = grupo, color = grupo), 
             size = 4) +
  
  geom_segment(data = datos, # Visualiza el palo de las piruletas 
               aes(x = 0, xend = valor, y = grupo, yend = grupo, color = grupo), 
               size=2 ) +
  
  theme(legend.position = "none",
        axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 0.5)) +
  
  labs(
    x = "Valores",
    y = "Grupos",
    title = "Título",
    subtitle = "Subtitulo menos importante",
    caption = "\nPie de linea, para explicar lo que se vea conveniente"
  ) + theme_minimal()



# --------------------------------------------------------------
# GRÁFICO DE PIRULETA - Con valores internos
# --------------------------------------------------------------

ggplot(datos, aes(valor, grupo, label = paste(round(valor, 0), "%")   )) +
  geom_segment(aes(x = 0, y = grupo, xend = valor, yend = grupo), color = rgb(1, 0, 0, 0.4), size=3) +
  geom_point(color = rgb(1, 0, 0, 0.6) , size = 14) +
  geom_text(nudge_x = 0 , color= "white") +
  theme(legend.position = "none",
        axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 0.5)) +
  labs(
    x = "Valores",
    y = "Grupos",
    title = "Título",
    subtitle = "Subtitulo menos importante",
    caption = "\nPie de linea, para explicar lo que se vea conveniente"
  ) + theme_minimal()




# --------------------------------------------------------------
# Preparación del conjunto de datos para el segundo gráfico
# --------------------------------------------------------------

datos <- datos %>%
  select(grupo, valor) %>%
  arrange(valor) %>%
  mutate(media = mean(valor, na.rm = TRUE),
         Tipo = ifelse(valor - media > 0, "Mayores", "Menores"),
         grupo = factor(grupo, levels = .$grupo))



# --------------------------------------------------------------
# GRÁFICO DE PIRULETA - Centrados en la media
# --------------------------------------------------------------

ggplot(datos, aes(x = valor, y = grupo, color = Tipo)) +
  
  geom_segment(aes(x = media, y = grupo, xend = valor, yend = grupo), ) +
  
  geom_point(size=3) +
   theme_minimal()

