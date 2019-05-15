#Sample
s <- sample(x=60:100,size=20,replace=T)
print(s)
#Max
max <- max(s)
print(max)
#Min
min <- min(s)
print(min)
#Mean
mean <- mean(s)
print(mean)
#Median
median <- median(s)
print(median)
#Quartile
qua <- quantile(s,probs = c(0.25,0.75))
print(qua)
#Range
range <- max - min
print(range)
#variance
variance <- var(s)
print(variance)
#standard deviation
sd <- sd(s)
print(sd)
#Coefficient of Variation
cv <- sd/mean
print(cv)
#Mean deviation
ds <- abs(s-mean)
sum <- sum(ds)
md <- sum/20
print(md)