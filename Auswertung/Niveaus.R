data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")

# Tables Niveaus
table(factor(data$M201.u, levels=0:5))
table(factor(data$M201.k, levels=0:5))

table(factor(data$M301.u, levels=0:5))
table(factor(data$M301.k, levels=0:5))

table(factor(data$M305.u, levels=0:5))
table(factor(data$M305.k, levels=0:5))

