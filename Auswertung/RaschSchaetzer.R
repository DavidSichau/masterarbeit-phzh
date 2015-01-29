library(eRm)
library(ltm)
library(ggplot2)
data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschData <- subset(data, select = c(M201_Q1  , M201_Q2  , M201_Q3  , M201_Q4  , M201_Q5,M301_Q1  , M301_Q2  , M301_Q3  , M301_Q4  , M301_Q5,M305_Q1  , M305_Q2  , M305_Q3  , M305_Q4  , M305_Q5   ))

rm1 <- RM(raschData)
rm2 <- rasch(raschData, start.val="random", constraint = cbind(ncol(raschData)+1,1))
factor.scores(rm2)
pp<-person.parameter(rm1)
summary(pp)
pp$theta.table

df<-data.frame(x=rm2$coefficients[,1],y=rm1$betapar)
theme_set(theme_grey(base_size = 18)) 
ggplot(df,aes(x=rm2$coefficients[,1], y= rm1$betapar)) +
  geom_point(shape=1,size=5) +
  geom_smooth(method=lm) + # Add linear regression line 
  xlab("marginaler Maximum-Likelihood") +
  ylab("bedingter Maximum-Likelihood") +
ggsave(file="RaschVergleich.png")
