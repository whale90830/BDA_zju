fit <- lm(weight ~ height, data = women)
summary(fit)
plot(women$height, women$weight, main = "Women Age 30-39", xlab = "Height (in inches)", ylab = "Weight (in pounds)")
abline(fit)