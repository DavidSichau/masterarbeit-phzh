
d <- read.csv(file="./CodierungVideo.csv", head=TRUE, sep=",",stringsAsFactors=FALSE)


wilcox.test(d$NoteMathe,d$SESSKO)
wilcox.test(d$NoteMathe,d$SchulVersuche)
wilcox.test(d$NoteNatW,d$SESSKO)
wilcox.test(d$NoteNatW,d$SchulVersuche)
'correliert'
wilcox.test(d$NoteMathe,d$NoteNatW)


'correlieren alle'
wilcox.test(d$M305_MessungKorrekt,d$M201_MessungKorrekt)
wilcox.test(d$M305_MessungKorrekt,d$M301_MessungKorrekt)
wilcox.test(d$M201_MessungKorrekt,d$M301_MessungKorrekt)

'correlieren alle'
wilcox.test(d$M305_Messwiederholung,d$M201_Messwiederholung)
wilcox.test(d$M305_Messwiederholung,d$M301_Messwiederholung)
wilcox.test(d$M201_Messwiederholung,d$M301_Messwiederholung)

'correliert auch'
wilcox.test(d$M305_Messwiederholung,d$M305_MessungKorrekt)
wilcox.test(d$M201_Messwiederholung,d$M201_MessungKorrekt)
'correliert nicht'
wilcox.test(d$M301_Messwiederholung,d$M301_MessungKorrekt)



'keiner Correlation'
wilcox.test(d$M305_MessungKorrekt,d$NoteMathe)$p.value
wilcox.test(d$M305_MessungKorrekt,d$NoteNatW)$p.value
wilcox.test(d$M305_MessungKorrekt,d$SESSKO)$p.value
wilcox.test(d$M305_MessungKorrekt,d$SchulVersuche)$p.value
wilcox.test(d$M305_MessungKorrekt,d$Weiblich)$p.value

wilcox.test(d$M301_MessungKorrekt,d$NoteMathe)$p.value
wilcox.test(d$M301_MessungKorrekt,d$NoteNatW)$p.value
wilcox.test(d$M301_MessungKorrekt,d$SESSKO)$p.value
wilcox.test(d$M301_MessungKorrekt,d$SchulVersuche)$p.value
wilcox.test(d$M301_MessungKorrekt,d$Weiblich)$p.value

wilcox.test(d$M201_MessungKorrekt,d$NoteMathe)$p.value
wilcox.test(d$M201_MessungKorrekt,d$NoteNatW)$p.value
wilcox.test(d$M201_MessungKorrekt,d$SESSKO)$p.value
wilcox.test(d$M201_MessungKorrekt,d$SchulVersuche)$p.value
wilcox.test(d$M201_MessungKorrekt,d$Weiblich)$p.value


'keiner Correlation'
wilcox.test(d$M305_Messwiederholung,d$NoteMathe)$p.value
wilcox.test(d$M305_Messwiederholung,d$NoteNatW)$p.value
wilcox.test(d$M305_Messwiederholung,d$SESSKO)$p.value
wilcox.test(d$M305_Messwiederholung,d$SchulVersuche)$p.value
wilcox.test(d$M305_Messwiederholung,d$Weiblich)$p.value

wilcox.test(d$M301_Messwiederholung,d$NoteMathe)$p.value
wilcox.test(d$M301_Messwiederholung,d$NoteNatW)$p.value
wilcox.test(d$M301_Messwiederholung,d$SESSKO)$p.value
wilcox.test(d$M301_Messwiederholung,d$SchulVersuche)$p.value
'correlation'
wilcox.test(d$M301_Messwiederholung,d$Weiblich)$p.value

'keiner Correlation'
wilcox.test(d$M201_Messwiederholung,d$NoteMathe)$p.value
wilcox.test(d$M201_Messwiederholung,d$NoteNatW)$p.value
wilcox.test(d$M201_Messwiederholung,d$SESSKO)$p.value
wilcox.test(d$M201_Messwiederholung,d$SchulVersuche)$p.value
wilcox.test(d$M201_Messwiederholung,d$Weiblich)$p.value
