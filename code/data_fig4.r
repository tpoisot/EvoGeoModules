library(betalink)
library(picante)
library(sp)
library(plyr)
library(reshape2)

source("commons.r")

load("webs.Rdata")

bw <- network_betadiversity(raw)

coord <- read.csv("../data/coordinates.csv", sep="\t")
rownames(coord) <- coord$Region
coord <- coord[,c(2,3)]

spd <- spDists(as.matrix(coord), longlat=TRUE)
rownames(spd) <- colnames(spd) <- rownames(coord)
spd <- melt(spd)
colnames(spd) <- c('i', 'j', 'sp')

## Tree thingies
host_tree <- read.tree("../data/host.tre")
host_tree$tip.label <- str_replace(host_tree$tip.label, "_", " ")
para_tree <- compute.brlen(read.tree("../data/para.tre"))
para_tree$tip.label <- str_replace(para_tree$tip.label, "_", " ")
A <- incidence(metaweb(raw))
h_mat <- cophenetic(host_tree)[colnames(A), colnames(A)]
p_mat <- cophenetic(para_tree)[rownames(A), rownames(A)]

para_space <- matrix(0, nrow=nrow(A), ncol=length(raw))
rownames(para_space) <- rownames(A)
colnames(para_space) <- names(raw)
host_space <- matrix(0, nrow=ncol(A), ncol=length(raw))
rownames(host_space) <- colnames(A)
colnames(host_space) <- names(raw)

for(i in c(1:length(raw)))
{
   a <- incidence(raw[[i]])
   para_space[rownames(a), names(raw)[i]] <- 1
   host_space[colnames(a), names(raw)[i]] <- 1
}

## PCD
host_pcd <- pcd(t(host_space), host_tree)
para_pcd <- pcd(t(para_space), para_tree)

m = function(x) melt(as.matrix(x))

pcds = m(host_pcd$PCD)
colnames(pcds) = c("Var1", "Var2", "hpcd")
pcds = merge(pcds, m(host_pcd$PCDp))
colnames(pcds) = c("Var1", "Var2", "hpcd", "hpcdp")
pcds = merge(pcds, m(para_pcd$PCD))
colnames(pcds) = c("Var1", "Var2", "hpcd", "hpcdp", "ppcd")
pcds = merge(pcds, m(para_pcd$PCDp))
colnames(pcds) = c("i", "j", "hpcd", "hpcdp", "ppcd", "ppcdp")

spd <- merge(spd, pcds)

fig4dat <- merge(bw, spd)
save(fig4dat, file="paco_fig4.Rdata")
