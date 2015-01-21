library(irr)
library(psych)
library(gmodels)

david <- read.csv(file="./CodierungNeu3.csv", head=TRUE, sep=",")
pitt <- read.csv(file="./Codierung_Pitt.csv", head=TRUE, sep=",")

david <- subset(david, Code%in%pitt$Code)
pitt <- pitt[order(pitt$Code) , ]
david <- david[order(david$Code) , ]


cohen.kappa(table(factor(david$M201_1.1, levels=0:1), factor(pitt$M201_1.1,levels=0:1)))
cohen.kappa(table(factor(david$M201_1.2, levels=0:1), factor(pitt$M201_1.2,levels=0:1)))
cohen.kappa(table(factor(david$M201_2.1, levels=0:2), factor(pitt$M201_2.1,levels=0:2)))
cohen.kappa(table(factor(david$M201_3.1, levels=0:2), factor(pitt$M201_3.1,levels=0:2)))
cohen.kappa(table(factor(david$M201_3.2, levels=0:1), factor(pitt$M201_3.2,levels=0:1)))
cohen.kappa(table(factor(david$M201_4.1, levels=0:1), factor(pitt$M201_4.1,levels=0:1)))
cohen.kappa(table(factor(david$M201_4.2, levels=0:1), factor(pitt$M201_4.2,levels=0:1)))
cohen.kappa(table(factor(david$M201_4.3, levels=0:1), factor(pitt$M201_4.3,levels=0:1)))
cohen.kappa(table(factor(david$M201_4.4, levels=0:1), factor(pitt$M201_4.4,levels=0:1)))
cohen.kappa(table(factor(david$M201_5.1, levels=0:1), factor(pitt$M201_5.1,levels=0:1)))
cohen.kappa(table(factor(david$M201_5.2, levels=0:1), factor(pitt$M201_5.2,levels=0:1)))



cohen.kappa(table(factor(david$M301_1.1, levels=0:1), factor(pitt$M301_1.1,levels=0:1)))
cohen.kappa(table(factor(david$M301_1.2, levels=0:1), factor(pitt$M301_1.2,levels=0:1)))
cohen.kappa(table(factor(david$M301_2.1, levels=0:2), factor(pitt$M301_2.1,levels=0:2)))
cohen.kappa(table(factor(david$M301_3.1, levels=0:2), factor(pitt$M301_3.1,levels=0:2)))
cohen.kappa(table(factor(david$M301_3.2, levels=0:1), factor(pitt$M301_3.2,levels=0:1)))
cohen.kappa(table(factor(david$M301_4.1, levels=0:1), factor(pitt$M301_4.1,levels=0:1)))
cohen.kappa(table(factor(david$M301_4.2, levels=0:1), factor(pitt$M301_4.2,levels=0:1)))
cohen.kappa(table(factor(david$M301_4.3, levels=0:1), factor(pitt$M301_4.3,levels=0:1)))
cohen.kappa(table(factor(david$M301_4.4, levels=0:1), factor(pitt$M301_4.4,levels=0:1)))
cohen.kappa(table(factor(david$M301_5.1, levels=0:1), factor(pitt$M301_5.1,levels=0:1)))
cohen.kappa(table(factor(david$M301_5.2, levels=0:1), factor(pitt$M301_5.2,levels=0:1)))


cohen.kappa(table(factor(david$M305_1.1, levels=0:1), factor(pitt$M305_1.1,levels=0:1)))
cohen.kappa(table(factor(david$M305_1.2, levels=0:1), factor(pitt$M305_1.2,levels=0:1)))
cohen.kappa(table(factor(david$M305_2.1, levels=0:2), factor(pitt$M305_2.1,levels=0:2)))
cohen.kappa(table(factor(david$M305_3.1, levels=0:2), factor(pitt$M305_3.1,levels=0:2)))
cohen.kappa(table(factor(david$M305_3.2, levels=0:1), factor(pitt$M305_3.2,levels=0:1)))
cohen.kappa(table(factor(david$M305_4.1, levels=0:1), factor(pitt$M305_4.1,levels=0:1)))
cohen.kappa(table(factor(david$M305_4.2, levels=0:1), factor(pitt$M305_4.2,levels=0:1)))
cohen.kappa(table(factor(david$M305_4.3, levels=0:1), factor(pitt$M305_4.3,levels=0:1)))
cohen.kappa(table(factor(david$M305_4.4, levels=0:1), factor(pitt$M305_4.4,levels=0:1)))
cohen.kappa(table(factor(david$M305_5.1, levels=0:1), factor(pitt$M305_5.1,levels=0:1)))
cohen.kappa(table(factor(david$M305_5.2, levels=0:1), factor(pitt$M305_5.2,levels=0:1)))



