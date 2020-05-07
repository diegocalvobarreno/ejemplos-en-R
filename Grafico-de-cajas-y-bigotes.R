
# ----------------------------------------------------------------
# Gráficos de cajas y bigotes - ejemlo 1 de formato de introdución
# ----------------------------------------------------------------

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"

nombre <- c("A","B","C","A","B","C","D","A","A","B")
valor <- c(1,2,3,4,5,6,7,8,9,10)
datos <- data.frame(nombre=nombre, valor=valor)

qplot(nombre, valor, data=datos, 
      geom = 'boxplot',
      fill=I("lightskyblue"), 
      col=I("cornflowerblue")
) + theme_minimal()

# ----------------------------------------------------------------
# Gráficos de cajas y bigotes - ejemlo 1 de formato de introdución
# ----------------------------------------------------------------

Var1<-c(1,2,3)
Var2<-c(4,5,6)
Var3<-c(7,8,9)
Var4<-c(10,11,12)

datos<-data.frame(Var1,Var2,Var3,Var4)

list.values <- unlist(as.list(datos))
list.names <- rep(colnames(datos), each=nrow(datos))

df.subset.list <- data.frame(names= list.names, values= list.values)

qplot(names, values, data=df.subset.list, 
      geom = 'boxplot',
      fill=I("lightskyblue"), 
      col=I("cornflowerblue")
) + theme_minimal()
