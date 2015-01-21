install.packages("psych")
library(psych)

data <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")

sessko <- subset(data, B1s>0 & B4s>0&B7s>0 & B10s>0 & B12s >0, select = c(B1s, B4s, B7s, B10s, B12s))
describe(sessko)
alpha(sessko[c("B1s","B4s","B7s","B10s","B12s")])
splitHalf(sessko[c("B1s","B4s","B7s","B10s","B12s")])


NatW <- subset(data, 
               Nat_SK_1  >0 & Nat_SK_2  >0&Nat_SK_3  >0 & Nat_SK_4  >0 & Nat_SK_5   >0& Nat_SK_6   >0& Nat_SK_7   >0&
               Nat_SK_1  <5 & Nat_SK_2  <5&Nat_SK_3  <5 & Nat_SK_4  <5 & Nat_SK_5   <5& Nat_SK_6   <5& Nat_SK_7   <5, 
               select = c(Nat_SK_1,Nat_SK_2,Nat_SK_3,Nat_SK_4,Nat_SK_5,Nat_SK_6,Nat_SK_7))
describe(NatW)
alpha(NatW[c("Nat_SK_1","Nat_SK_2","Nat_SK_3","Nat_SK_4","Nat_SK_5","Nat_SK_6","Nat_SK_7")])
splitHalf(NatW[c("Nat_SK_1","Nat_SK_2","Nat_SK_3","Nat_SK_4","Nat_SK_5","Nat_SK_6","Nat_SK_7")])


lapply(NatW, shapiro.test)
lapply(sessko, shapiro.test)
