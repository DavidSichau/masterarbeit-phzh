library(eRm)
library(ggplot2)
library(EnvStats)

data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschData201 <- subset(data, select = c(M201_Q5, M201_Q1  , M201_Q2  , M201_Q3))
raschData301 <- subset(data, select = c(M301_Q5, M301_Q1  , M301_Q2  , M301_Q3))
raschData305 <- subset(data, select = c(M305_Q5, M305_Q1  , M305_Q2  , M305_Q3))
rm201 <- RM(raschData201)
rm301 <- RM(raschData301)
rm305 <- RM(raschData305)

rm201
rm301
rm305

pp201 <- person.parameter(rm201)
summary(pp201)

pp301 <- person.parameter(rm301)
summary(pp301)

pp305 <- person.parameter(rm305)
summary(pp305)


pp201$theta.table
pp301$theta.table

df <- data.frame(pp201$theta.table, pp301$theta.table)
df <- subset(df, Person.Parameter select = c("Person.Parameter", "Person.Parameter.1"))
df <- df[complete.cases(df),]#remove NA
df

cor.test(df$Person.Parameter, df$Person.Parameter.1)

plot(df$Person.Parameter ~ df$Person.Parameter.1)


png('GOF201301Pers.png')
gofobj <- gofTest(df$Person.Parameter, df$Person.Parameter.1)
plot(gofobj, plot.type="Q-Q", main="", ylab = expression(theta ~ "Test 201"), xlab = expression(theta ~ "Test 301"), pch=19)
dev.off()


png('GOF201305Pers.png')
gofobj2 <- gofTest(result$betapar[1:3], result$betapar[7:9])
plot(gofobj2, plot.type="Q-Q", main="", ylab = expression(beta ~ "Test 201"), xlab = expression(beta ~ "Test 305"), pch=19)
dev.off()


png('GOF301305Pers.png')
gofobj3 <- gofTest(result$betapar[4:6], result$betapar[7:9])
plot(gofobj3, plot.type="Q-Q", main="", ylab = expression(beta ~ "Test 301"), xlab = expression(beta ~ "Test 305"), pch=19)
dev.off()

gofobj
gofobj2
gofobj3
