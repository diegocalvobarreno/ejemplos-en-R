
# Distribuciones de probabilidad
# https://rpubs.com/ggraham412/100906

# Explicacion
# https://gonzalezgouveia.com/analisis-exploratorio-de-datos-en-r/#Percentiles_y_BoxPlot
  
# --------------------------------------------------------------
# Distribución normal
# --------------------------------------------------------------


x <- rnorm(1000, mean = 10, sd = 1)

hist(x, col="lightskyblue")


z<-seq(-3.5,3.5,0.1)  # 71 points from -3.5 to 3.5 in 0.1 steps
q<-seq(0.001,0.999,0.001)  # 1999 points from 0.1% to 99.9% on 0.1% steps
dStandardNormal <- data.frame(Z=z, 
                              Density=dnorm(z, mean=0, sd=1),
                              Distribution=pnorm(z, mean=0, sd=1))  
qStandardNormal <- data.frame(Q=q, 
                              Quantile=qnorm(q, mean=0, sd=1))  
head(dStandardNormal)



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
