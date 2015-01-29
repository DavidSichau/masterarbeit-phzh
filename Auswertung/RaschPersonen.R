library(eRm)
library(ggplot2)
library(EnvStats)
library(ltm)

data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschData201 <- subset(data, select = c( M201_Q1  , M201_Q2  , M201_Q3))
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




df201301 <- data.frame(pp201$theta.table, pp301$theta.table)
df201301 <- subset(df201301, Person.Parameter select = c("Person.Parameter", "Person.Parameter.1"))
df201301 <- df201301[complete.cases(df201301),]#remove NA


gofTest(df201301$Person.Parameter, df201301$Person.Parameter.1)
theme_set(theme_grey(base_size = 18)) 
ggplot(df201301, aes(x=df201301$Person.Parameter, y= df201301$Person.Parameter.1)) +
  geom_text(data = data.frame(), aes(0.25, 1.5, label =   "ks = 0.45"))+
  geom_text(data = data.frame(), aes(0.25, 1.35, label = "p-value = 2e-3"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(5, 10))+
  xlab(expression(theta ~ "Test 201")) +
  ylab(expression(theta ~ "Test 301")) +
  geom_abline(intercept = 0, slope = 1)
ggsave(file="GOF201301Pers.png")

df201305 <- data.frame(pp201$theta.table, pp305$theta.table)
df201305 <- subset(df201305, Person.Parameter select = c("Person.Parameter", "Person.Parameter.1"))
df201305 <- df201305[complete.cases(df201305),]#remove NA


gofTest(df201305$Person.Parameter, df201305$Person.Parameter.1)
theme_set(theme_grey(base_size = 18)) 
ggplot(df201305, aes(x=df201305$Person.Parameter, y= df201305$Person.Parameter.1)) +
  geom_text(data = data.frame(), aes(0.25, 1.55, label =   "ks = 0.62"))+
  geom_text(data = data.frame(), aes(0.25, 1.45, label = "p-value = 1e-6"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(5, 10))+
  xlab(expression(theta ~ "Test 201")) +
  ylab(expression(theta ~ "Test 305")) +
  geom_abline(intercept = 0, slope = 1)
ggsave(file="GOF201305Pers.png")


df301305 <- data.frame(pp301$theta.table, pp305$theta.table)
df301305 <- subset(df301305, Person.Parameter select = c("Person.Parameter", "Person.Parameter.1"))
df301305 <- df201305[complete.cases(df301305),]#remove NA

ks.test(df301305$Person.Parameter, df301305$Person.Parameter.1)
gofTest(df301305$Person.Parameter, df301305$Person.Parameter.1)
theme_set(theme_grey(base_size = 18)) 
ggplot(df301305, aes(x=df301305$Person.Parameter, y= df301305$Person.Parameter.1)) +
  geom_text(data = data.frame(), aes(0.25, 1.55, label =   "ks = 0.60"))+
  geom_text(data = data.frame(), aes(0.25, 1.45, label = "p-value = 1e-3"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(5, 10))+
  xlab(expression(theta ~ "Test 301")) +
  ylab(expression(theta ~ "Test 305")) +
  geom_abline(intercept = 0, slope = 1)
ggsave(file="GOF301305Pers.png")
