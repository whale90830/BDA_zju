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