library(eRm)
library(ggplot2)

d <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
raschDataQ <- subset(d, select = c(M201_Q1  , M201_Q2  , M201_Q3,M301_Q1  , M301_Q2  , M301_Q3  ,M305_Q1  , M305_Q2  , M305_Q3     ))


result <- RM(raschDataQ)
pp<-person.parameter(rm1)

df<- data.frame(pp$theta.table)
df <- subset(df, Person.Parameter select = c("Person.Parameter"))

theta <- df$Person.Parameter

cor.test(theta, d$NoteMathe,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=theta, y=d$NoteMathe)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.25, 5.5, label =   "Spearman-rho = 0.17"))+
  geom_text(data = data.frame(), aes(2.6, 5.4, label = "p-value = 0.16"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab(expression(theta)) +
  ylab("Mathe Note") +
ggsave(file="corPersonenMathe.png")

cor.test(theta, d$NoteNatW,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=theta, y=d$NoteNatW)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.25, 5.5, label =   "Spearman-rho = 0.0"))+
  geom_text(data = data.frame(), aes(2.6, 5.4, label = "p-value = 0.95"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab(expression(theta)) +
  ylab("Naturwissenschaften Note") +
  ggsave(file="corPersonenNatw.png")

cor.test(theta, d$SESSKOabs,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=theta, y=d$SESSKOabs)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.25, 25, label =   "Spearman-rho = 0.09"))+
  geom_text(data = data.frame(), aes(2.6, 24, label = "p-value = 0.46"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab(expression(theta)) +
  ylab("SESSKO Selbstkonzept") +
  ggsave(file="corPersonenSESSKO.png")

cor.test(theta, d$NAT_ROH,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=theta, y=d$NAT_ROH)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.25, 26, label =   "Spearman-rho = 0.23"))+
  geom_text(data = data.frame(), aes(2.6, 25, label = "p-value = 0.04"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab(expression(theta)) +
  ylab("Schulversuch Selbstkonzept") +
  ggsave(file="corPersonenSelbskonzept.png")

