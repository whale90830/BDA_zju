sum <- 0;
for (i in 1:100){
  if (i %% 3 == 0 | i %% 5 == 0){
    print(i);
    sum <- sum + i;
  }
}
print(sum)