## Assignment05

基于R语言rpart软件包的DTdata数据集，构建一颗决策树并可视化输出，并对下述记录进行测试：
```
Outlook=“sunny”, Temperature=“mild”,Humidity=“high”, Wind=FALSE
```

### 源代码

```r
setwd("D:/COURSEWARE/InfoCourse/BDA/assignment/Assignment5")
library("rpart")
library("rpart.plot")
play_decision <- read.table("DTdata.csv", header = TRUE, sep=",")
fit <- rpart(Play ~ Outlook + Temperature + Humidity + Wind,
             method ="class",
             data = play_decision,
             control = rpart.control(minsplit = 1),
             parms = list(split='information'))
rpart.plot(fit, type=4, extra=2, clip.right.labs=FALSE, varlen=0, faclen=0)
newdata <- data.frame(Outlook = "sunny", Temperature = "mild", Humidity = "high", Wind = FALSE)
result <- predict(fit, newdata = newdata, type = "prob")
print(result)
```

### 输出结果

#### 决策树可视化
![image](https://s2.ax1x.com/2019/05/06/EBr37j.md.png)

#### 预测结果
![image](https://s2.ax1x.com/2019/05/06/EBrN90.md.png)