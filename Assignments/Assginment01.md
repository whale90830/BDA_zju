### 作业1：输出1至100之间的能够被3或5整除的数，并求和

```r
sum <- 0;
for (i in 1:100){
  if (i %% 3 == 0 | i %% 5 == 0){
    print(i);
    sum <- sum + i;
  }
}
print(sum)
```

### 作业2：输出1百万以内的斐波那契数列

```r
x1 <- 1;
print(x1);
x2 <- 1;
print(x2);
repeat{
  x3 <- x1 + x2;
  if (x3 > 1000000) break;
  print(x3);
  x1 <- x2;
  x2 <- x3;
}
```
