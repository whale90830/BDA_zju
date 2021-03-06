library("cluster")
library("ggplot2")
data(ruspini)
data <- ruspini
#plot(data)
wss <- numeric(15)
for (k in 1:15)
  wss[k]<-kmeans(data,centers = k,nstart = 25)$tot.withinss
#plot(1:15,wss,type = "b",xlab = "x",ylab = "y")
km = kmeans(data,4,nstart = 25)
kmcenter = data.frame(km$centers)
p <- ggplot(data = NULL,mapping = aes(x=kmcenter$x,y=kmcenter$y))
p <- p+geom_point(aes(size = 9, color = "red"))
p <- p+geom_point(aes(x=data$x,y=data$y))
print(p)