

data <- read.csv(file="./CodierungNeu2.csv", head=TRUE, sep=",")

# Entfernen von Reihen mit Beschriftung oder mit identischen Werten
df <- data
df <- df[,-which(names(df) %in% c("Code", "M201_5.1"))]
# Shapiro-Wilks test
lapply(df, shapiro.test)




# Anderson-Darling test
lapply(df, ad.test)


#Visuelle Überprüfung
qqnorm(data$NoteNatW)
qqline(data$NoteNatW)
