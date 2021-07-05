#EJERCICIO 1
10000%%3

#EJERCICIO 2
x<- 4560
x%%3==0  

#EJERCICIO 3
y <- c(2:87)  
y[(y %% 7)== 0]

#EJERCICIO 4
a <- 7:3 
b <- 1:5*5

A <- a %% 2 == 0
B <- b > 10

A & B

#EJERCICIO 5
sum(c(1:100))

#EJERCICIO 6 
V <- c(1,-4,5,9,-4)   
which.min(V)

#EJERCICIO 7
prod((1:8))

#EJERCICIO 8
suma<-0
for (i in 3:7) {
  ecu<-(e^i)
  suma<-suma+ecu
  
}
suma

#EJERCICIO 9
i =c(1:10)
prod(log(sqrt(i)))

#EJERCICIO 1O
corona_circular <- function(R,r){
  resultado  <- pi*((R^2)- (r^2))
  resultado
}

corona_circular(8,2)

#EJERCICIO 11

v <- c(2,7,8,14,29)
x <- c(v[length(x)],v[length(x)-1],v[length(x)-2],v[length(x)-3],v[length(x)-4])
rev(v)

#EJERCICIO 12
suma<-0 
for (i in 10:100) {
  ecu<-((i^3) + (4*i^2))
  suma<-suma+ecu
  }
suma

#EJERCICIO 13
x<-0
for (i in 1:25) {
  y<-((2^i)/i+(3^i)/(i^2))
  x<-x+y
}
x

#EJERCICIO 14
dt<-read.table("C:/PROGRA/Paises.txt",header = TRUE)

length(colnames(dt)) #Hay 5 variables 

length(dt$Pais) #Hay 107 pa?ses  

dt$Pais[which.max(dt$poblacion)] #pa?s con mayor poblaci?n es China 

dt$Pais[which.min(dt$alfabetizacion)] #pa?s con alfabetizaci?n m?s baja es "Burkina_Faso"

#EJERCICIO 15
w<-mtcars
head(w)

#Autos rendimiento menor a 18 millas  por gal?n 
rendi<-w[w$mpg<18,]
rownames(rendi)
#Autos que tengan 4 cilindros
cilin  <-w[w$cyl==4,]
rownames(cilin)
#Autos que pesen m?s de 2500 libras y tengan transmisi?n manual 
peso<-w[w$wt>2.500 & data$am==1, ]
rownames(peso)     

