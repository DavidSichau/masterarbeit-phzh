
library(eRm)

data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschDataQ <- subset(data, select = c(M201_Q1  , M201_Q2  , M201_Q3,M301_Q1  , M301_Q2  , M301_Q3  ,M305_Q1  , M305_Q2  , M305_Q3     ))


result <- RM(raschDataQ)
summary(result)
png('ICCQ1.png')
plotjointICC(result,  item.subset = c(1,4,7),ylab="Lösungswahrscheinlichkeit", xlab="Personenfähigkeit")
dev.off()
png('ICCQ2.png')
plotjointICC(result,  item.subset = c(2,5,8),ylab="Lösungswahrscheinlichkeit", xlab="Personenfähigkeit")
dev.off()
png('ICCQ3.png')
plotjointICC(result,  item.subset = c(3,6,9),ylab="Lösungswahrscheinlichkeit", xlab="Personenfähigkeit")
dev.off()
png('ICCQ123.png')
plotjointICC(result,  item.subset = c(1,2,3,4,5,6,7,8,9),ylab="Lösungswahrscheinlichkeit", xlab="Personenfähigkeit",
             lwd=3, lty=c(1,1,1,2,2,2,3,3,3), col=c(4,2,3,4,2,3,4,2,3)
)
dev.off()

plotICC(result, ask=F, empICC=list("raw"), empCI=list(lty="solid"))


plotINFO(result)
png('PersonItemMap.png')
plotPImap(result)
dev.off()

plotPWmap(result)
plotICC(result)





pp <- person.parameter(result)
plot(pp)
summary(pp)




itemfit(pp)
personfit(pp)
pmat(pp)

