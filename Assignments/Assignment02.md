### Assignment02

用sample函数产生20名同学的成绩，范围为60到100之间，并计算

- 最低分、最高分
- 平均分、中位数分数、四分位数
- 极差、平均差、方差、标准差、离散系数

等统计指标。需同时列出函数和计算结果。


```r
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
#Variance
variance <- var(s)
print(variance)
#Standard Deviation
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
```


```
随机产生的20名同学的成绩
70  72  96  63 100  74  67  84  98  88  77  84  79  75  62  88  96  94  72  95
最高分 100
最低分 62
平均分 81.7
中位数 81.5
四分位数 25% 72.00, 75% 94.25 
极差 38
方差 149.4842
标准差 12.22637
离散系数 0.1496496
平均差 10.6
```


