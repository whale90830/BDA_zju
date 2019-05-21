## Assignment07

对R语言自带的AirPassengers数据集进行时间序列分析，生成四种趋势图（需安装tseries和forecast包），并生成关于季节性趋势的图表

### 源代码

```r
library(tseries)
library(forecast)
dc<-decompose(AirPassengers)
plot(dc)
season<-dc$figure
plot(season,type = "b",xaxt="n",xlab = "")
a<-auto.arima(AirPassengers)
print(a)
fit<-arima(AirPassengers,order = c(2,1,1),seasonal = list(order=c(0,1,0),period=12))
airforecast <- forecast(fit)
plot(airforecast)
```

### 四种趋势图

![image](https://s2.ax1x.com/2019/05/21/Eztz01.png)

### 季节性趋势

![image](https://s2.ax1x.com/2019/05/21/EzNA6H.png)

### 预测

auto.arima 选取arima参数

```
Series: AirPassengers 
ARIMA(2,1,1)(0,1,0)[12] 

Coefficients:
         ar1     ar2      ma1
      0.5960  0.2143  -0.9819
s.e.  0.0888  0.0880   0.0292

sigma^2 estimated as 132.3:  log likelihood=-504.92
AIC=1017.85   AICc=1018.17   BIC=1029.35
```

![image](https://s2.ax1x.com/2019/05/21/EzdS7n.png)