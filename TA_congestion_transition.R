if(!require(pacman)){install.packages("pacman");
  library(pacman)}
p_load(markovchain,diagram)

tti1 <- read_excel("febam.xlsx")
tti1 <- markovchainFit(tti1$tti1,name = "si")$estimate
tti1
steadyStates(tti1)
stateNames <- c("Heavy","Light","Moderate")
tti5 <- matrix(
  c(0,80,20,1.2,95.2,3.6,0,81,19),
  nrow=3, byrow=TRUE)
row.names(tti5) <- stateNames; colnames(tti5) <- stateNames
tti5
pos1 <- cbind (
  c(0,80,20,1.2,95.2,3.6,0,81,19))
plotmat(tti5,pos = c(1,2),
        lwd = 2, box.lwd = 3,
        cex.txt = 0.8,
        box.size = 0.1,
        box.type = "ellipse",
        box.prop = 1.2,
        box.col = "lightblue",
        arr.length=.3,
        arr.width=.3,
        self.cex = .3,
        self.shifty = -.01,
        self.shiftx = .13,
        main = "")
