### PRACTICA AL ESCRIBIR CON <- ME CREA UN OBJETO, EJEMPLO

curso <- data.frame(nombre= c("Juan", "Pedro", "María", "José", 
                              "Enzo", "Ariel", "Eva"),
                    edad= c(25, 32, 21,40, 
                            30, 28, 37),
                    nacim= c(1993, 1986, 1997, 1978,
                             1988, 1990, 1981),
                    software.primario= c("spss", "stata", "stata", 
                                         "excel", "R", "stata",
                                         "spss"),
                    nivel= c(3, 5,7, 6,
                             2, 6, 8))
curso

nombre <- "LouSempert"

nombre

suma <- 2+8

suma

## COMANDO PARA ELEMINIAR UN OBJETO CREADO 

rm(suma)

suma <- 258+458

suma

## al escribir pesos me permite abrir las variables que componen la base de datos

curso$nombre

### para poder calcular la edad promedio del curso

sum(curso$edad)/7  ## hardcodeado (comozco el nro de n) el valor largo del vector edad

sum(curso$edad)/length(curso$edad)  ## calculo programatico del largo del vector edad

length(curso$edad)

edad_promedio <- sum(curso$edad)/length(curso$edad)

round(edad_promedio)

round(x = edad_promedio, digits = 2)

### Función para poder instalar un paquete, por ejemplo TIDYVERSE install-package("tidyverse")


### PARA VER UNA LIBRERIA library(tidyverse)

library(tidyverse)

%>%  ## atajo para la pipa ctrl + Shift + M

