setwd("~/Dropbox/01_PHZH/01_Masterarbeit/Auswertung/")
data <- read.csv(file="Codierung.csv", head=TRUE, sep=";")
shapiro.test(data$B7)

shapiro.test(data$B3)
ks.test(data$M201.u, "pnorm")

