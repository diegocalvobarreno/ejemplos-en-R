
# ----------------------------------------------------------------
# Gráficos de cajas y bigotes - ejemlo 1 acumulando valores
# ----------------------------------------------------------------

nombre <- c("A","B","C","A","B","C","C","A","A","B")  # 3 cajas diferentes
valor <- c(1,2,3,4,5,6,7,8,9,10)                      # valores de cada letra
datos <- data.frame(nombre=nombre, valor=valor)

qplot(nombre, valor, data=datos, 
      geom = 'boxplot',
      fill=I("lightskyblue"),   # Color del fondo
      col=I("cornflowerblue")   # Color de las lineas
) + theme_minimal()

# ----------------------------------------------------------------
# Gráficos de cajas y bigotes - ejemlo 2 definir cada caja por separado
# ----------------------------------------------------------------

Var1<-c(1,2,3,4,5) # Definir los valores de caa caja en una variable
Var2<-c(4,5,6,7,8)
Var3<-c(1,2,6,7,9)
Var4<-c(3,5,6,2,1)

datos<-data.frame(Var1,Var2,Var3,Var4)

list.values <- unlist(as.list(datos))
list.names <- rep(colnames(datos), each=nrow(datos))

df.subset.list <- data.frame(names= list.names, values= list.values)

qplot(names, values, data=df.subset.list, 
      geom = 'boxplot',
      fill=I("lightskyblue"),   # Color del fondo
      col=I("cornflowerblue")   # Color de las lineas
) + theme_minimal()


# ----------------------------------------------------------------
# Gráficos de cajas y bigotes - ejemlo 3 con ggplot2
# ----------------------------------------------------------------

ggplot(df.subset.list, aes(x = factor(names), y = values, fill = factor(names) )) + 
   geom_boxplot() + 
   theme_minimal()  + 
   scale_fill_brewer(palette = "Blues") + 
   geom_jitter() 
