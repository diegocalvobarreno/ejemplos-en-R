
# --------------------------------------------------------------
# Gráfico de barras horizontales (forma de piruletas)
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

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
  )+ theme_minimal()


# --------------------------------------------------------------
# Gráfico de barras horizontales (forma de piruletas rellenas)
# --------------------------------------------------------------

#install.packages("dplyr") # Instalar paquete de tratamiento de dataframes
library(dplyr) # Cargar la librería de manipulación de dataframes "dplyr"

grupo <- factor(c("A","B","C","D","E","F","G","H","I","J"))
valor <- c(8,4,3,2,5,6,7,1,9,10)
datos <- data.frame(grupo=grupo,valor=valor)


# Ordenar el conjunto de datos por valor y agrupar por grupo
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
  )+ theme_minimal()

# --------------------------------------------------------------
# Gráfico de barras horizontales (forma de piruletas en dos sentidos)
# --------------------------------------------------------------

datos <- datos %>%
  select(grupo, valor) %>%
  arrange(valor) %>%
  mutate(media = mean(valor, na.rm = TRUE),
         Tipo = ifelse(valor - media > 0, "Superiores a la media", "Inferiores a la media"),
         colores = ifelse(valor - media > 0, rgb(0, 0, 1, 0.5), rgb(1, 0, 0, 0.5)), # Blue y red
         grupo = factor(grupo, levels = .$grupo))

ggplot(datos, aes(valor, grupo, color = Tipo)) +
  geom_segment(aes(x = media, y = grupo, xend = valor, yend = grupo), color = datos$colores) +
  geom_point(size=3) + theme_minimal()

# --------------------------------------------------------------
# Gráfico de barras horizontales (forma de barras con origen y fin variable) 
# --------------------------------------------------------------

datos <- datos %>%
  select(grupo, valor) %>%
  arrange(valor) %>%
  mutate(media = mean(valor, na.rm = TRUE),
         Tipo = ifelse(valor - media > 0, "Superiores a la media", "Inferiores a la media"),
         colores = ifelse(valor - media > 0, rgb(0, 0, 1, 0.5), rgb(1, 0, 0, 0.5)), # Blue y red
         grupo = factor(grupo, levels = .$grupo))

ggplot(datos, aes(valor, grupo, color = Tipo)) +
  geom_segment(aes(x = media, y = grupo, xend = valor, yend = grupo), color = datos$colores) +
  geom_point(size=3) + theme_minimal()


# --------------------------------------------------------------
# Gráfico de barras horizontales (forma de barras con origen y fin variable + porcentage de aplitud) 
# --------------------------------------------------------------

sexo <- c(rep("man",20),rep("woman",20),rep("man",20),rep("woman",20))
valor <- 1:80
grupo <- c(rep("spain",25),rep("italy",25),rep("portugal",30))
datos <- data.frame(sexo=sexo, valor=valor, grupo=grupo)

# REVISAR PROBLEMA
datos.grupo.sexo <- datos %>%
  group_by(grupo, sexo) %>%
  summarise(valor = sum(valor, na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(grupo = factor(grupo, levels = .$grupo))

datos.min <- datos.grupo.sexo %>%
  group_by(grupo) %>%
  arrange(desc(valor)) %>%
  top_n(1)

datos.max <- datos.grupo.sexo %>%
  group_by(grupo) %>%
  arrange(desc(valor)) %>%
  slice(2)

ggplot(datos.grupo.sexo, aes(valor, grupo)) +
  geom_line(aes(group = grupo ), color ="lightsteelblue4") +
  geom_point(aes(color = sexo), size = 4) +
  geom_text(data = datos.min, aes(color = sexo, label = round(valor, 0)),
            size = 3, hjust = -.8) +
  geom_text(data = datos.max, aes(color = sexo, label = round(valor, 0)),
            size = 3, hjust = 1.8) +
  scale_x_continuous(limits = c(0, 1600))
