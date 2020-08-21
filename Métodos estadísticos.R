########################### EJERCICIO 1: DATOS 1 #######################################
#Para ver los nombres de cada columna.
names(x = Datos_del_parcial_1_)

#Estructura de los datos.
str(object = Datos_del_parcial_1_)
summary(object = Datos_del_parcial_1_)
attach(Datos_del_parcial_1_)
Talamuffins=`Hectareas de bosque alto andino taladas Muffins`
par(mfrow=c(2,1))
hist(`Talamuffins`, main = 'Hectareas de bosque alto andino taladas Muffins',col="light blue")

TalaPulpa=`Hectareas de vosque alto andino taladas Pulpa`
hist(`TalaPulpa`, main = 'Hectareas de bosque alto andino taladas Pulpa',col="light green")

par(mfrow=c(1,1))
boxplot(Talamuffins,TalaPulpa, col=rainbow(2))
boxplot(Talamuffins,TalaPulpa, col=c("light blue","pink"),names= expression(Talamuffins,TalaPulpa),horizontal = TRUE)

#Prueba de hipotesis- Varianzas iguales o diferentes:
var.test(Talamuffins,TalaPulpa)
??var.test
#p-value = 0.009329
#gl=11
#VARIANZAS DIFERENTES.

#Prueba de medias:
??t.test()
#mu: es el valor que esta después del igual de la prueba de hipotesis.
t.test(Talamuffins,TalaPulpa,paired = F,var.equal = F,conf.level = 0.95,mu = 0)
#p-value = 0.03803

###########PRUEBA DE PROPORCIÓN########
p1 <- c(1,1,1,0,1,0,0,1,1,1,1,1)
p2 <- c(0,1,0,1,0,0,0,0,0,1,0,1)

prop.test(x = p1,p2,n = 12,p = NULL,alternative = "two.sided",conf.level = 0.95)
??prop.test()


####ULTIMA PRUEBA DE MEDIAS######
AguaMuffins=`Consumo de agua por cada hectarea cultivada Muffins`
AguaPulpa=`Consumo de agua por cada hectarea cultivada Pulpa`

#Prueba de hipotesis- Varianzas iguales o diferentes:
var.test(AguaMuffins,AguaPulpa)

#Prueba de medias:
t.test(AguaMuffins,AguaPulpa,paired = F,var.equal = F,alternative ="less" ,conf.level = 0.95,mu = 0)



datos2 <- read.csv(file = "datos 2.csv",sep=";")
attach(datos2)
Co2Muffins=Co2.Muffins.Catta
Co2Pulpa=Co2.Pulpa.y.Pepper
#Prueba de hipotesis- Varianzas iguales o diferentes:
var.test(Co2Muffins,Co2Pulpa)

#Prueba de medias:
t.test(Co2Muffins,Co2Pulpa,paired = F,var.equal = F,alternative ="less" ,conf.level = 0.95,mu = 0)




###################################EJERCICIO 2: DATOS##############################
#Anova=varianza de la variable dependiente. 
#Modelo robusto que depende más del modleo que de los errores. 
d<-Ejemplo_Lm_1_
View(d)
Y=Bo+B1X
plot(d)
pairs(d)
attach(d)

#Creación del modelo
fit <- lm(`Reduccion de la demanda de oxigeno`~`Reduccion de solidos`,data = d)
summary(fit)
formula(fit)
par(mfrow=c(2,2))
plot(fit)
#Y = 8.2058+0.79442X
anova(fit)

install.packages("car")
library(car)
#NORMALIDAD
shapiro.test(fit$residuals)

#INDEPENDENCIA
durbinWatsonTest(fit)

#HOMOCEDASTICIDAD
ncvTest(fit)
