## Assignment03

使用R语言cluster包中的ruspini数据集，执行一个k均值分析。记录结果并解释所选择的k值。

### 源代码

```r
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
```

### 聚类结果

![image](https://s2.ax1x.com/2019/04/07/AhkN9K.png)

### 选择K值的原因

![image](https://s2.ax1x.com/2019/04/07/Ahkdje.png)

簇内误差平方和在K=4时出现拐点，故选择K=4