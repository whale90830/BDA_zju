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