library(ggplot2)

d <- read.csv(file="./CodierungVideo.csv", head=TRUE, sep=",",stringsAsFactors=FALSE)



cor.test(d$M201_MessungKorrekt, d$M201_Q1,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=d$M201_MessungKorrekt, y=d$M201_Q1)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.6, 1.5, label = "Spearman-rho = - 0.13"))+
  geom_text(data = data.frame(), aes(2.71, 1.4, label = "p-value = 0.76"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  ylab("Q1") +
  xlab("Video korrekte Messung") +
  ggsave(file="corVideoQ1201.png")

cor.test(d$M301_MessungKorrekt, d$M301_Q1,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=d$M301_MessungKorrekt, y=d$M301_Q1)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.6, 1.5, label = "Spearman-rho = 0.00"))+
  geom_text(data = data.frame(), aes(2.71, 1.4, label = "p-value = 1.00"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  ylab("Q1") +
  xlab("Video korrekte Messung") +
  ggsave(file="corVideoQ1301.png")

cor.test(d$M305_MessungKorrekt, d$M305_Q1,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=d$M305_MessungKorrekt, y=d$M305_Q1)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.6, 1.5, label = "Spearman-rho = 0.26"))+
  geom_text(data = data.frame(), aes(2.7, 1.4, label = "p-value = 0.53"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  ylab("Q1") +
  xlab("Video korrekte Messung") +
  ggsave(file="corVideoQ1305.png")



cor.test(d$M201_Messwiederholung, d$M201_Q4,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=d$M201_MessungKorrekt, y=d$M201_Q4)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.6, 0.055, label = "Spearman-rho = 0.00"))+
  geom_text(data = data.frame(), aes(2.7, 0.052, label = "p-value = 1.00"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  ylab("Q4") +
  xlab("Video Messwiederholung") +
  ggsave(file="corVideoQ4201.png")

cor.test(d$M301_Messwiederholung, d$M301_Q4,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=d$M301_MessungKorrekt, y=d$M301_Q4)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.6, 1.5, label = "Spearman-rho = 0.00"))+
  geom_text(data = data.frame(), aes(2.71, 1.4, label = "p-value = 1.00"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  ylab("Q4") +
  xlab("Video Messwiederholung") +
  ggsave(file="corVideoQ4301.png")

cor.test(d$M305_Messwiederholung, d$M305_Q4,method="spearm")
theme_set(theme_grey(base_size = 18)) 
ggplot(d, aes(x=d$M305_MessungKorrekt, y=d$M305_Q4)) +
  geom_smooth(method=lm) + # Add linear regression line 
  geom_text(data = data.frame(), aes(2.6, 1.5, label = "Spearman-rho = 0.07"))+
  geom_text(data = data.frame(), aes(2.7, 1.4, label = "p-value = 0.87"))+
  stat_sum( geom = "point", aes(size = ..n..))+ scale_size(range = c(2, 10))+
  ylab("Q4") +
  xlab("Video Messwiederholung") +
  ggsave(file="corVideoQ4305.png")
