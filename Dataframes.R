

# --------------------------------------------------------------
# DATAFRAMES
# --------------------------------------------------------------


# --------------------------------------------------------------
# Crear dataframes - a partir de listas y/o matrices
# --------------------------------------------------------------

matriz<-matrix(c(20,65,174,22,70,180,19,68,170),nrow=3,byrow=T)
dimnames(matriz)<-list(c("peter","juan","maria"), c("edad","peso","altura"))
provincia<-c("cadiz","soria","madrid")
datos<-data.frame(matriz,provincia)
datos


nombre <- c("Andres","Sonia","Carlos","Julia")
grupo <- factor(c("A","B","C","A"))
valor <- c(8,4,3,2)

datos <- data.frame(nombre= nombre, grupo=grupo, nuevo_valor=valor)
datos


dim(datos)


dimnames(datos)<-list(c("Num1","Num2","Num3","Num4"), c("nombre","grupo","valor"))


dimnames(datos)


colnames(datos)


rownames(datos)


mode(datos)


ncol(datos)


nrow(datos)


is.data.frame(datos)


datos[1,2]


datos[,3]


datos[1,]
