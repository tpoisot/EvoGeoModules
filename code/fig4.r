library(RColorBrewer)
library(plyr)
palette(brewer.pal(9, "Set1"))

load("paco_fig2.Rdata")
load("paco_fig1.Rdata")
load("D.Rdata")

pdf(width=10, file="../figures/figure4.pdf")
par(mfcol=c(1,2), xaxs="i", yaxs="i",pty="s")





LOC = fig1dat$loc_ss / max(D$gof$ss)
REG = fig1dat$reg_ss / max(D$gof$ss)


#plot(density(LOC, from=0, to=0.3),
	#xlab = "Network-level coevolution (relative to continental)",
	#ylab = "Density",
	#col = 2,
	#xlim = c(0, 0.4),
	#ylim = c(0, 20),
	#main=""
#)
#lines(density(REG, from=0, to=1),col=3)
#box()

#legend("topright", fill=c(2,3), legend=c("Regional", "Local"), bty="n")



imean = ddply(fig2dat[,c("site", "type", "rvalue")], .(site, type), summarize, m = mean(rvalue))
mloc = subset(imean, type=="loc")[,c("site", "m")]
colnames(mloc) = c("site", "mloc")
mreg = subset(imean, type!="loc")[,c("site", "m")]
colnames(mreg) = c("site", "mreg")
mi = merge(mloc, mreg)
colnames(mi) = c(".id", "mloc", "mreg")
allm = merge(mi, fig1dat)

plot(REG~mreg, allm, pch=NA, col=2, ylab = "Relative amount of coevolutionary signal", xlab="Average interaction-level contribution to coevolutionary signal", ylim=c(0, 0.3))
segments(x0=allm$mreg, x1=allm$mloc, y0=REG, y1=LOC, col="lightgrey")
lines(smooth.spline(x=allm$mreg, y=REG, df=3), lty=2, col=2)
lines(smooth.spline(x=allm$mloc, y=LOC, df=3), lty=2, col=3)
points(REG~mreg, allm, pch=19, col=2)
points(LOC~mloc, allm, pch=19, col=3)
legend("topright", fill=c(2,3), legend=c("Regional", "Local"), bty="n")


plot(density(unique(fig2dat[,c("int","rvalue")])$rvalue, from=1e3, to=max(fig2dat$rvalue)), log="x",
   xlab = "Interaction-level contribution to coevoluationary signal",
   ylab = "Density",
   col = 1,
   xlim = c(1e3, 4e4),
   ylim = c(0, 0.0002),
   main=""
)
lines(density(subset(fig2dat, type=="reg")$score, from=1e3, to=max(fig2dat$rvalue)),col=2)
lines(density(subset(fig2dat, type=="loc")$score, from=1e3, to=max(fig2dat$rvalue)),col=3)

legend("topright", fill=c(1,2,3), legend=c("Continental", "Regional", "Local"), bty="n")











dev.off()




