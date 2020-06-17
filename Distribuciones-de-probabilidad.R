
# Distribuciones de probabilidad
# https://rpubs.com/ggraham412/100906

# Explicacion
# https://gonzalezgouveia.com/analisis-exploratorio-de-datos-en-r/#Percentiles_y_BoxPlot

set.seed(1234) 

# --------------------------------------------------------------
# Distribución normal
# --------------------------------------------------------------


# Función de densidad de probabilidad
# --------------------------------------------------------------

n<-seq(-4,4,0.1)  # 81 puntos de -4 a 4 en intervalos de 0,1
datos <- data.frame(n=n, 
                    densidad=dnorm(n, mean=0, sd=1),
                    distribucion=pnorm(n, mean=0, sd=1)) 

ggplot(datos, aes(x=n, y=densidad )) + 
      geom_line(colour="red")  + 
      ggtitle ("Función normal de densidad \ndnorm( media=0, desviacion=1)") + 
      theme_minimal()


# Función de distribución acumulada
# --------------------------------------------------------------
ggplot(datos, aes(x=z, y=distribucion )) + 
  geom_line(colour="red") +
  ggtitle ("Funci normal acumulada \npnorm( media=0, desviacion=1)") + 
  theme_minimal()

# Función de cuartiles
# --------------------------------------------------------------
q<-seq(0.01,0.99,0.01)  # 99 puntos de 1% a 99% en intervalos de 1%
datos <- data.frame(Q=q, cuartiles=qnorm(q, mean=0, sd=1))  

ggplot(datos, aes(x=q, y=cuartiles )) + 
  geom_line(colour="blue")  + 
  ggtitle ("Distribución normal acumulada \npnorm( media=0, desviacion=1)") + 
  theme_minimal()


# Función aleatorea
# --------------------------------------------------------------
datos <- data.frame(Z=z, 
                    x=rnorm(z, mean=0, sd=1),
                    y=rnorm(z, mean=0, sd=1)) 

ggplot(datos, aes(x=x, y=y )) + 
  geom_point(colour="blue")  + 
  title("ddd")+
  theme_minimal()


# --------------------------------------------------------------
# Distribución exponencial
# --------------------------------------------------------------

curve(dexp(x), from = 0, to = 10)  # Representa la densidad de una exponencial de media 1 entre 0 y 10



# --------------------------------------------------------------
# Distribución binamial
# --------------------------------------------------------------

x <- rbinom(20, 1, 0.5)  # Genera 20 observaciones con distribución B(1,0.5)
x


# --------------------------------------------------------------
# Distribución de Poisson
# --------------------------------------------------------------

x <- dpois(x = 2, lambda = 3)


lower<-qpois(0.001, lambda=2.5)
upper<-qpois(0.999, lambda=2,5)
n<-seq(lower,upper,1)
q<-seq(0.001,0.999,0.001)
dPoisson25 <- data.frame(N=n, 
                         Density=dpois(n, lambda=2.5),
                         Distribution=ppois(n, lambda=2.5))  
qPoisson25 <- data.frame(Q=q, Quantile=qpois(q, lambda=2.5))  
head(dPoisson25)

plot(dPoisson25$Density)
