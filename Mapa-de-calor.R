
# --------------------------------------------------------------
# Mapa de calor
# --------------------------------------------------------------

# Cargar librerias
# --------------------------------------------------------------
install.packages("reshape2") # Instalar paquete modificar dataframes
library(reshape2) # Cargar la librería "reshape2"

#install.packages("ggplot2") # Instalar paquete de visualización gráfica
library(ggplot2) # Cargar la librería gráfica "ggplot2"


# Generar la matriz
# --------------------------------------------------------------

# Definir nombres de filas y columnas
nombre_genes <- paste(rep("Gen", 10), LETTERS[1:10], sep="_") # Nombres de Filas
nombre_pacientes <- paste(rep("Paciente", 5), seq(1,5,1), sep="_") # Nombres de Columnas

# Generar valores aleatorios de la matriz
valores <- data.frame(genes = nombre_genes, # Poner nombre a las columnas
                      matrix(rnorm(50, 2, 1.8),
                            nrow = length(nombre_genes),
                            ncol = length(nombre_pacientes))
                      )
# Poner nombre a las filas
names(valores)[2:(length(nombre_pacientes)+1)] <- nombre_pacientes

#Visualizar el conjunto de datos a mostrar en el mapa de calor
valores



# Reorganizar el dataframe para ponerlo en formato entendible por el mapa de calor
# --------------------------------------------------------------
datos <- melt(valores, id.vars = "genes")
names(datos)[2:3] <- c("paciente", "nivel")
head(datos)



# Visualizar el gráfico
# --------------------------------------------------------------
ggplot(datos, aes(paciente, genes )) +
  geom_tile(aes(fill = nivel), color = "white") +
  scale_fill_gradient(low = "white", high = "steelblue") +
  ylab("Genes") +
  xlab("Pacientes") +
  theme(legend.title = element_text(size = 10),
        legend.text = element_text(size = 12),
        plot.title = element_text(size=16),
        axis.title=element_text(size=14,face="bold"),
        axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(fill = "Nivel")
