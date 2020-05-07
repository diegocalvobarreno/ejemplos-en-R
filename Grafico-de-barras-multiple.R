
# --------------------------------------------------------------
# Gráfico de barras horizontales múltiples valores por barra
# --------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

nombre <- c("A","B","C","A","B","C")
tipo <- c(rep("yes",3),rep("no",3))
valor <- c(1,3,2,3,2,4)

datos <- data.frame(nombre=nombre,tipo=tipo, valor=valor)

ggplot() + 
  geom_bar(data=datos,aes(x=nombre, y=valor,fill=tipo), stat='identity', position='dodge') +
  coord_flip()


# --------------------------------------------------------------
# Gráfico de comparación de múltiples valores discretizados por una variable
# --------------------------------------------------------------

sexo <- c(rep("Mujer",20),rep("Hombre",20),rep("Mujer",20),rep("Hombre",20))
valor <- 1:80
grupo <- c(rep("España",25),rep("Italia",25),rep("Portugal",30))

datos <- data.frame(sexo=sexo, valor=valor, grupo=grupo)

ggplot(datos, aes(grupo, valor, fill = sexo)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  theme_minimal()


# --------------------------------------------------------------
# Gráfico de puntos categorizados por tipo
# -------------------------------------------------------------- 

nombre <- c("A","B","C","D","E","F","G","H","I","J")
valor <- c(8,4,3,2,5,6,7,1,9,10)
tipo <- c(rep("yes",5),rep("no",5))
datos <- data.frame(nombre=nombre,tipo=tipo, valor=valor)

datos <- datos[order(datos$valor),] 
datos$tipo <- factor(datos$tipo) # Esto debe de ser un factor
datos$color[datos$tipo=="yes"] <- "blue"
datos$color[datos$tipo=="no"] <- "red"

dotchart(datos$valor,labels=datos$nombre,cex=.8, groups= datos$tipo,
         main="Titulo del grafico", xlab="Valores", color=datos$color)
