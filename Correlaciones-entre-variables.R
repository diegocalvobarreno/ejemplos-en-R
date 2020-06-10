
# --------------------------------------------------------------
# Definir el conjunto de datos a utilizar
# --------------------------------------------------------------

set.seed(1234)
x <- c(runif(13)*5+0,runif(12)*5+5,runif(15)*5+10,runif(10)*5+15)
y <- c(runif(13)*5+1,runif(12)*5+8,runif(15)*5+12,runif(10)*5+4)

# Variable tamaño correlada con X
tamano <- x*50 

# Variable color correlada con Y
color <- c(rep("red",13), rep("green",12),rep("blue",15),rep("orange",10))

# Visualización de 3 variables
plot(x,y, col=color)

# Variable poco correlada a priori
peso <- rnorm(50,20,10)



# Generamos el conjunto de datos
datos <- data.frame(x,y,color,tamano,peso)


# --------------------------------------------------------------
# Correlación 1
# --------------------------------------------------------------

# Transformamos el color en factor para poder realizar correlaciones con la variable
datos$color <- factor(datos$color)

# Generar un dataframe transformando todos los datos a numéricos
num_datos <- datos
num_datos[] <- lapply(datos,as.integer) 

# Calcular las correlaciones entre variables
cor(num_datos)


# --------------------------------------------------------------
# Correlación 2
# --------------------------------------------------------------
#install.packages("psych")
library(psych)

# Visualiza correlación, permite datos categóricos y numéricos
pairs.panels(datos)


# --------------------------------------------------------------
# Correlación 3
# --------------------------------------------------------------
#install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)

# Visualiza correlación, permite solamente datos numéricos
chart.Correlation(num_datos)
