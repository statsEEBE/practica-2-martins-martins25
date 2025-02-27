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


mod <- lm(y~x)
summary(mod)
ypredict <- predict(mod, data.frame(x=x))
plot(x,y,pch=16)
lines(x, ypredict,col='red')

#r^2 determina la presició de la predicció: r^2=1 ( la predicció es exacta) r^2=0 (predicció inexacta)

Rsq=sum((ypredict-mean(y))^2)/sum((y-mean(y))^2)
Rsq

summary(mod)

