
# --------------------------------------------------------------
# Generar datos a utilizar
# --------------------------------------------------------------

set.seed(123456)
x <- c(runif(10)*3+10, runif(5)*2+7,  runif(15)*3+2)
y <- c(runif(10)*3+5,  runif(5)*10+7, runif(15)*4+6)
color <-  c(rep("red",10), rep("green",5),rep("blue",15))
tamano <- round(rnorm(30,10,10)) + 20
plot(x,y, col=color)
datos <- data.frame(x,y,color,tamano)



# --------------------------------------------------------------
# Visualización de datos
# --------------------------------------------------------------

head(datos, 5) # Visualizar los 5 primeros elementos

tail(datos, 5) # Visualizar los 5 últimos elementos

table(datos$color) # Visualizar cuantos elementos existen de cada color

str(datos) # Visualizar información sobre el dataframe



# --------------------------------------------------------------
# Resumenes estadísticos
# --------------------------------------------------------------

summary(datos)


color <-factor(color)
datos <- data.frame(x,y,color,tamano)

summary(datos)

install.packages("skimr")
library("skimr")

skim(datos) # Visualizar información descriptiva sobre los valores del dataframe

# --------------------------------------------------------------
# Histogramas
# --------------------------------------------------------------

hist(datos$tamano, breaks = 7, col="lightskyblue")

hist(datos$tamano, breaks = 2, col="lightskyblue")


# --------------------------------------------------------------
# Tablas de frecuencia
# --------------------------------------------------------------


install.packages("agricolae")
library("agricolae")

aux <- table.freq( hist(datos$tamano, plot=FALSE, breaks = 2) )
aux

datos$categoria<-cut(datos$tamano, c(aux$Lower, max(aux$Upper)))

datos

levels(datos$categoria) <- c("Pequeño", "Mediano", "Grande")

datos
