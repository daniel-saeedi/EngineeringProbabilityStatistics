plot.p1 <- function(n) {
    lambda <- 1
    trials <- 10000
    sim <- rexp(n*trials,lambda)
    m <- matrix(sim,trials)
    sample.means <- rowMeans(m)
    hist(sample.means, freq=F,xlab = "Sample Mean",col = "cyan",border = "white",main=paste("Sample", "Size",n, sep=" "))
    curve(dexp(x, rate=lambda) , 0, 3, lwd=2, xlab = "", ylab = "", add = T)
    curve(dnorm(x, mean=mean(sample.means), sd=sd(sample.means)), add=TRUE, 
    col="red", lwd=3)
}
#sample size
n <- c(1,10,100,1000,10000)
for(i in n)
{
    plot.p1(i)
}

plot.p2 <- function() {
    lambda <- 1
    trials <- 1000
    var_vector <- c()
    for(n in 1:1000)
    {
        sim <- rexp(n*trials,lambda)
        m <- matrix(sim,trials)
        sample.means <- rowMeans(m)
        var_vector <- c(var_vector,var(sample.means))
    }
    plot(var_vector,type = "o",xlab = "n", ylab = "Standard Deviation")
}
plot.p2()