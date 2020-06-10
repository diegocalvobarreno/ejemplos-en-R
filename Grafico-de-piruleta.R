library(ggplot2) # Cargar la librería gráfica "ggplot2"
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

grupo <- factor(c("A","B","C","D","E","F","G","H","I","J"))
valor <- c(8,4,3,2,5,6,7,1,9,10)
datos <- data.frame(grupo=grupo,valor=valor)

datos <- datos %>% 
  arrange(valor) %>%
  top_n(6) %>%
  mutate(grupo = factor(grupo, levels = .$grupo))

ggplot() +
  geom_point(data = datos, aes(x = valor, y = grupo, color = grupo), size = 4) +
  geom_segment(data = datos, aes(x = 0, y = grupo, xend = valor, yend = grupo, color = grupo), size=2 ) +
  theme(legend.position = "none",
        axis.text.x = element_text(angle = 0, vjust = 0.5, hjust = 0.5)) +
  labs(
    x = "Valores",
    y = "Grupos",
    title = "Título",
    subtitle = "Subtitulo menos importante",
    caption = "\nPie de linea, para explicar lo que se vea conveniente"
  )





grupo <- factor(c("A","B","C","D","E","F","G","H","I","J"))
valor <- c(8,4,3,2,5,6,7,1,9,10)
datos <- data.frame(grupo=grupo,valor=valor)

datos <- datos %>% 
  arrange(valor) %>%
  top_n(6) %>%
  mutate(grupo = factor(grupo, levels = .$grupo))

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
  )






datos <- datos %>%
  select(grupo, valor) %>%
  arrange(valor) %>%
  mutate(media = mean(valor, na.rm = TRUE),
         Tipo = ifelse(valor - media > 0, "Superiores a la media", "Inferiores a la media"),
         colores = ifelse(valor - media > 0, rgb(0, 0, 1, 0.5), rgb(1, 0, 0, 0.5)), # Blue y red
         grupo = factor(grupo, levels = .$grupo))

ggplot(datos, aes(valor, grupo, color = Tipo)) +
  geom_segment(aes(x = media, y = grupo, xend = valor, yend = grupo), color = datos$colores) +
  geom_point(size=3)