library(eRm)

data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschDataQ <- subset(data, select = c(M201_Q1  , M201_Q2  , M201_Q3  , M201_Q4  , M201_Q5,M301_Q1  , M301_Q2  , M301_Q3  , M301_Q4  , M301_Q5,M305_Q1  , M305_Q2  , M305_Q3  , M305_Q4  , M305_Q5   ))

raschDataI <- subset(data, select = c(M201_1.1  , M201_1.2  , M201_2.1  , M201_3.1  , M201_3.2, M201_4.1, M201_4.2, M201_4.3, M201_4.4, M201_5.2,
                                      M301_1.1  , M301_1.2  , M301_2.1  , M301_3.1  , M301_3.2, M301_4.1, M301_4.2, M301_4.3, M301_4.4, M301_5.1, M301_5.2 ,
                                      M305_1.1  , M305_1.2  , M305_2.1  , M305_3.1  , M305_3.2, M305_4.1, M305_4.2, M305_4.3, M305_4.4, M305_5.1, M305_5.2 ))


result <- RM(raschData)
summary(result)

plotjointICC(result,  item.subset = c(1,2,3,4,5))
plotjointICC(result,  item.subset = c(6,7,8,9,10))
plotjointICC(result,  item.subset = c(11,12,13,14,15))
plotjointICC(result,  item.subset = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
             lwd=3, lty=c(1,2,3) 
             )


plotINFO(result)
plotPImap(result)
plotPWmap(result)
plotICC(result)



pp <- person.parameter(result)
plot(pp)
summary(pp)


#Test von Rasch Modell

LRtest(result)
qchisq(0.95,df=9)
# p > 0.05 Rasch Modell wird beibehalten

Waldtest(result)
# kein signifikanter p wert daher können alle behalten werden

plotGOF(LRtest(result), tlab = "item",
         conf = list(ia = FALSE, col = "blue", lty = "dotted"))


itemfit(pp)
personfit(pp)
pmat(pp)
