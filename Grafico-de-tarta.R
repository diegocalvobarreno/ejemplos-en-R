# --------------------------------------------------------------
# Gráfico de tarta
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

#install.packages("scales") # Instalar paquete de visualización gráfica
library(scales) # Cargar la librería gráfica "scales"


category <- c("A","B","C") 
value <- c(20,40,60)

df <- data.frame(value, category)

df$porcent = percent(df$value / sum(df$value))

df[['category']] = factor(df[['category']], levels = na.omit(as.character(df[['category']])))
df[['fraction']] = df[['value']]/sum(df[['value']]) 
df[['pos']] = 1 - (cumsum(df[['fraction']]) - df[['fraction']]/2)
ggplot(df, aes(x = 1, y = fraction, fill=category, label = fraction)) +
  geom_col(width = 1) + 
  coord_polar(theta='y') +
  theme_minimal() + 
  scale_y_continuous(
    breaks=df$pos,
    labels=df$porcent
  ) +
  theme(axis.line.y = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.text.y = element_blank())
