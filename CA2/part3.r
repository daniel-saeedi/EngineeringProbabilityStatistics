#inverse transform sampling
#number of samples
samples <-  1000
U           <-  runif(samples)
X           <- -log(U)/2
#plot
hist(X, freq=F, xlab='X', main='(Frequency distribution)')
curve(dexp(x, rate=2) , 0, 3, lwd=2, xlab = "", ylab = "", add = T)