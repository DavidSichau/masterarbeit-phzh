library(psych)

data <- read.csv(file="./CodierungNeu.csv", head=TRUE, sep=",")

sessko <- subset(data, B1s>0 & B4s>0&B7s>0 & B10s>0 & B12s >0, select = c(B1s, B4s, B7s, B10s, B12s))
describe(sessko)
alpha(sessko[c("B1s","B4s","B7s","B10s","B12s")])
splitHalf(sessko[c("B1s","B4s","B7s","B10s","B12s")])
