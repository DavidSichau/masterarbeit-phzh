d <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")



k1 <- subset(d, Klasse==1)
k2 <- subset(d, Klasse==2)
k3 <- subset(d, Klasse==3)
k4 <- subset(d, Klasse==4)

#Klasse 1 vs 2

var <- k1$M201_Q1
var2 <- k2$M201_Q1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q2
var2 <- k2$M201_Q2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q3
var2 <- k2$M201_Q3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q4
var2 <- k2$M201_Q4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q5
var2 <- k2$M201_Q5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS1
var2 <- k2$M201_QS1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS2
var2 <- k2$M201_QS2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS3
var2 <- k2$M201_QS3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS4
var2 <- k2$M201_QS4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS5
var2 <- k2$M201_QS5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

# Klass 1 vs 3

var <- k1$M201_Q1
var2 <- k3$M201_Q1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q2
var2 <- k3$M201_Q2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q3
var2 <- k3$M201_Q3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q4
var2 <- k3$M201_Q4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q5
var2 <- k3$M201_Q5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS1
var2 <- k3$M201_QS1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS2
var2 <- k3$M201_QS2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS3
var2 <- k3$M201_QS3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS4
var2 <- k3$M201_QS4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS5
var2 <- k3$M201_QS5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

#Klasse 1 vs 4

var <- k1$M201_Q1
var2 <- k4$M201_Q1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q2
var2 <- k4$M201_Q2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q3
var2 <- k4$M201_Q3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q4
var2 <- k4$M201_Q4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_Q5
var2 <- k4$M201_Q5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS1
var2 <- k4$M201_QS1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS2
var2 <- k4$M201_QS2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS3
var2 <- k4$M201_QS3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS4
var2 <- k4$M201_QS4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k1$M201_QS5
var2 <- k4$M201_QS5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

# Klass 2 vs 3

var <- k2$M201_Q1
var2 <- k3$M201_Q1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q2
var2 <- k3$M201_Q2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q3
var2 <- k3$M201_Q3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q4
var2 <- k3$M201_Q4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q5
var2 <- k3$M201_Q5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS1
var2 <- k3$M201_QS1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS2
var2 <- k3$M201_QS2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS3
var2 <- k3$M201_QS3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS4
var2 <- k3$M201_QS4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS5
var2 <- k3$M201_QS5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

# Klass 2 vs 4

var <- k2$M201_Q1
var2 <- k4$M201_Q1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q2
var2 <- k4$M201_Q2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q3
var2 <- k4$M201_Q3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q4
var2 <- k4$M201_Q4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_Q5
var2 <- k4$M201_Q5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS1
var2 <- k4$M201_QS1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS2
var2 <- k4$M201_QS2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS3
var2 <- k4$M201_QS3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS4
var2 <- k4$M201_QS4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k2$M201_QS5
var2 <- k4$M201_QS5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

# Klass 3 vs 4

var <- k3$M201_Q1
var2 <- k4$M201_Q1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_Q2
var2 <- k4$M201_Q2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_Q3
var2 <- k4$M201_Q3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_Q4
var2 <- k4$M201_Q4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_Q5
var2 <- k4$M201_Q5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_QS1
var2 <- k4$M201_QS1
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_QS2
var2 <- k4$M201_QS2
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_QS3
var2 <- k4$M201_QS3
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_QS4
var2 <- k4$M201_QS4
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

var <- k3$M201_QS5
var2 <- k4$M201_QS5
x <- matrix(c(nrow(k1) - sum(var == 1),nrow(k1) - sum(var2 == 1),sum(var== 1),sum(var2== 1)),2,2)
fisher.test(x)

