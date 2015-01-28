library(eRm)

data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschDataQ <- subset(data, select = c(M201_Q1  , M201_Q2  , M201_Q3  , M201_Q4  , M201_Q5,M301_Q1  , M301_Q2  , M301_Q3  , M301_Q4  , M301_Q5,M305_Q1  , M305_Q2  , M305_Q3  , M305_Q4  , M305_Q5   ))
rmQ <- RM(raschDataQ)

lr1<-LRtest(rmQ, splitcr = "mean", se=TRUE)
plotGOF(lr1, tlab = "number", ylab="Randsumme >= Mittelwert", xlab="Randsumme < Mittelwert",
        conf = list(gamma=0.95, col=1), main="")
LRtest(rmQ, splitcr = geschlecht)
Waldtest(rmQ, splitcr="mean")

raschDataQ2 <- subset(data, select = c(M201_Q1  , M201_Q2  , M201_Q3,M301_Q1  , M301_Q2  , M301_Q3  ,M305_Q1  , M305_Q2  , M305_Q3     ))
rmQ2 <- RM(raschDataQ2)
lr2<-LRtest(rmQ2, splitcr = "mean", se=TRUE)
png('GOFQ.png')
plotGOF(lr2, tlab = "item", ylab="Randsumme >= Mittelwert", xlab="Randsumme < Mittelwert",
        conf = list(gamma=0.95, col=1), main="")
dev.off()
Waldtest(rmQ2, splitcr="mean")
lr2

