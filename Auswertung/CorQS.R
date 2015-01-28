library(corrgram)
library(ggplot2)

d <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")


k <- subset(d,  select = c(M201.k,M301.k,M305.k))
u <- subset(d,  select = c(M201.u,M301.u,M305.u))


pairs(k,main="Simple Scatterplot Matrix")


cor.test(d$M201_Q1, d$M301_Q1,method="spearm")
cor.test(d$M201_Q2, d$M301_Q2,method="spearm")
cor.test(d$M201_Q3, d$M301_Q3,method="spearm")
cor.test(d$M201_Q4, d$M301_Q4,method="spearm")
cor.test(d$M201_Q5, d$M301_Q5,method="spearm")

cor.test(d$M201_QS1, d$M301_QS1,method="spearm")
cor.test(d$M201_QS2, d$M301_QS2,method="spearm")
cor.test(d$M201_QS3, d$M301_QS3,method="spearm")
cor.test(d$M201_QS4, d$M301_QS4,method="spearm")
cor.test(d$M201_QS5, d$M301_QS5,method="spearm")



cor.test(d$M201_Q1, d$M305_Q1,method="spearm")
cor.test(d$M201_Q2, d$M305_Q2,method="spearm")
cor.test(d$M201_Q3, d$M305_Q3,method="spearm")
cor.test(d$M201_Q4, d$M305_Q4,method="spearm")
cor.test(d$M201_Q5, d$M305_Q5,method="spearm")

cor.test(d$M201_QS1, d$M305_QS1,method="spearm")
cor.test(d$M201_QS2, d$M305_QS2,method="spearm")
cor.test(d$M201_QS3, d$M305_QS3,method="spearm")
cor.test(d$M201_QS4, d$M305_QS4,method="spearm")
cor.test(d$M201_QS5, d$M305_QS5,method="spearm")


cor.test(d$M301_Q1, d$M305_Q1,method="spearm")
cor.test(d$M301_Q2, d$M305_Q2,method="spearm")
cor.test(d$M301_Q3, d$M305_Q3,method="spearm")
cor.test(d$M301_Q4, d$M305_Q4,method="spearm")
cor.test(d$M301_Q5, d$M305_Q5,method="spearm")

cor.test(d$M301_QS1, d$M305_QS1,method="spearm")
cor.test(d$M301_QS2, d$M305_QS2,method="spearm")
cor.test(d$M301_QS3, d$M305_QS3,method="spearm")
cor.test(d$M301_QS4, d$M305_QS4,method="spearm")
cor.test(d$M301_QS5, d$M305_QS5,method="spearm")












#Plots

cor.test(d$M201.k, d$M301.k,method="spearm")

theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=M201.k, y=M301.k)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(4.25, 4.5, label =   "Spearman-rho = 0.20"))+
  geom_text(data = data.frame(), aes(4.5, 4.3, label = "p-value = 0.08"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab("Test 201") +
  ylab("Test 301") +
  ggtitle("kLev")
ggsave(file="cor201301k.png")


cor.test(d$M201.u, d$M301.u,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=M201.u, y=M301.u)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(4.25, 4.5, label =   "Spearman-rho = 0.26"))+
  geom_text(data = data.frame(), aes(4.5, 4.3, label = "p-value = 0.02"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab("Test 201") +
  ylab("Test 301") +
  ggtitle("uLev")
ggsave(file="cor201301u.png")



cor.test(d$M201.k, d$M305.k,method="spearm")

theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=M201.k, y=M305.k)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(4.25, 4.5, label =   "Spearman-rho = 0.33"))+
  geom_text(data = data.frame(), aes(4.5, 4.3, label = "p-value = 4e-3"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab("Test 201") +
  ylab("Test 305") +
  ggtitle("kLev")
ggsave(file="cor201305k.png")


cor.test(d$M201.u, d$M305.u,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=M201.u, y=M305.u)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(4.25, 4.5, label =   "Spearman-rho = 0.44"))+
  geom_text(data = data.frame(), aes(4.5, 4.3, label = "p-value = 1e-4"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab("Test 201") +
  ylab("Test 305") +
  ggtitle("uLev")
ggsave(file="cor201305u.png")


cor.test(d$M301.k, d$M305.k,method="spearm")

theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=M301.k, y=M305.k)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(4.25, 4.5, label =   "Spearman-rho = 0.01"))+
  geom_text(data = data.frame(), aes(4.5, 4.3, label = "p-value = 0.89"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab("Test 301") +
  ylab("Test 305") +
  ggtitle("kLev")
ggsave(file="cor301305k.png")


cor.test(d$M301.u, d$M305.u,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=M301.u, y=M305.u)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(4.25, 4.5, label =   "Spearman-rho = 0.36"))+
  geom_text(data = data.frame(), aes(4.5, 4.3, label = "p-value = 2e-3"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  xlab("Test 301") +
  ylab("Test 305") +
  ggtitle("uLev")
ggsave(file="cor301305u.png")

