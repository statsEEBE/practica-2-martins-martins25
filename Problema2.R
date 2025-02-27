#Codigo para problema 2
mis_dades <- iris
dim(mis_dades)

mis_dades$Petal.Length
mean(mis_dades$Petal.Length)
sd(mis_dades$Petal.Length)
hist(mis_dades$Petal.Length)
x <- mis_dades$Petal.Length
y <- mis_dades$Sepal.Length
plot(x, y)

#mínims quadrats
#pendent m
m <- sum((x-mean(x))*(y-mean(y)))/sum((x-mean(x))^2)
m
#b
b <- mean(y)-m*mean(x)
b
#llavors la recta de regressió és y=mx+b=0,4x+4,3
m*1.5+b
