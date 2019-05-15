## Assignment06

利用R语言自带的women数据集，建立拟合身高和体重之间的关系的回归方程，画出拟合的线性回归线，并对回归方程进行检验。

### 源代码

```r
fit <- lm(weight ~ height, data = women)
summary(fit)
plot(women$height, women$weight, main = "Women Age 30-39", xlab = "Height (in inches)", ylab = "Weight (in pounds)")
abline(fit)
```

### 线性回归

![image](https://s2.ax1x.com/2019/05/15/ETgkWQ.png)

### 检验

![image](https://s2.ax1x.com/2019/05/15/ETglYF.png)

#### （1）拟合程度评价

`Multiple R-squared:  0.991,	Adjusted R-squared:  0.9903`

`$R^2$`即拟合优度，反映回归直线的拟合程度。`$R^2 \to 1$`说明回归方程拟合的越好

我们得到的拟合回归方程的`$R^2 = 0.991$`，说明拟合程度很好。

#### （2）显著性检验

##### 对整个回归方程的显著性检验——F检验

`F-statistic:  1433 on 1 and 13 DF,  p-value: 1.091e-14`

F-statistic，即F检验。其P值为1.091e-14，显然< 0.01，可以认为方程在P=0.01的水平上可以通过显著性检验。

##### 对回归系数的显著性检验——t检验

```
Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) -87.51667    5.93694  -14.74 1.71e-09 ***
height        3.45000    0.09114   37.85 1.09e-14 ***
```

在Coefficients部分中，观察Pr(>|t|)，即P值，与预设的0.01比较，均< 0.01，则可以认为Intercept和height在P为0.01的水平下显著不为0，通过显著性检验
