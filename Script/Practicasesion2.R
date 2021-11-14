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

curso %>% ## atajo para la pipa CTRL + SHIFT + M
  summarise(mean(edad))

curso %>% 
  summarise(promedio = mean(edad))

curso %>% 
  summarise(promedio = round(mean(edad),
                             digits = 2)
            )

library(electorAr)

elecciones <- show_available_elections(source = "data", viewer = T)

class(elecciones)

class(curso$edad)

class(curso$nombre)

class(curso$nivel)

numeros_texto <- as.character(curso$nivel)

class(numeros_texto)

as.numeric(numeros_texto)

dim(curso) ### dimensiones de CURSO

### para poder ver la tabla de la libreria

show_available_elections(source = "data", viewer = T)

elecciones

### para las general 

eleccion <- get_election_data(district = "arg",
                  category = "presi",
                  round = "gral",
                  year  = 2015, raw = TRUE)

eleccion %>% 
  get_names()

### para las paso

eleccion2 <- get_election_data(district = "arg",
                              category = "presi",
                              round = "paso",
                              year  = 2015, raw = TRUE)

eleccion2 %>% 
  get_names()

gral2015 <- get_election_data(district = "arg",
                                          category = "presi",
                                          round = "gral",
                                          year  = 2015, level = "departamento") %>% 
  get_names()

## mas votos del FIT

## version BASE

fit <- gral2015[gral2015$nombre_lista == 'ALIANZA FRENTE DE IZQUIERDA Y DE LOS TRABAJADORES', ] # > BASE
fit[fit$votos == max(fit$votos),]

## Version TIDY

gral2015 %>%  # > TIDY
  filter(nombre_lista == 'ALIANZA FRENTE DE IZQUIERDA Y DE LOS TRABAJADORES') %>% 
  ungroup() %>% 
  slice_max(votos)

