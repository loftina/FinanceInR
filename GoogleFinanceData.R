library(quantmod)
getSymbols("GOOG", from="2017-01-01", to="2017-05-01")
head(GOOG)
plot(GOOG[,"GOOG.Close"], main="Close")
#red = closing higher than open
#black = open higher than close (market going down)
candleChart(GOOG, up.col="red", dn.col="black", theme="white")
#findsmoving average of first n observations
addSMA(n=2)
addRSI(n=4)