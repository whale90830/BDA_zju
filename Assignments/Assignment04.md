## Assignment04

基于R语言arules软件包的Groceries数据集，使用Apriori算法来生成频繁项集和规则，最小支持度阀值设定为0.002，最小可信度阀值设定为0.6。

输出：满足最小支持度和最小可信度的所有规则的散点图，并列出可信度最高的前10条规则。

### 源代码

```r
library(arules)
library(arulesViz)
data(Groceries)
grocery_itemsets <- apriori(data=Groceries,parameter=list(support = 0.002,confidence = 0.6,minlen = 2,target="frequent itemsets"))
grocery_rules <- apriori(data=Groceries,parameter=list(support = 0.002,confidence = 0.6,minlen = 2,target="rules"))
#inspect(sort(grocery_itemsets))
plot(grocery_rules)
inspect(sort(grocery_rules,by="confidence")[1:10])
```

### 输出

- 满足最小支持度和最小可信度的所有规则的散点图

![image](https://s2.ax1x.com/2019/04/15/AjjLFg.png)

- 可信度最高的前10条规则

![image](https://s2.ax1x.com/2019/04/15/Ajjzyq.md.png)
