plot.eigen.values.normal <- function(n) {
	mat <- matrix(rnorm(n*n,mean=0,sd=1/n), n, n)
    ev <- eigen(mat)
    values <- ev$values
    plot(values,main=paste("Normal Distribution-Matrix ",n,"*",n ,sep=" "))
}
plot.eigen.values.normal(10)
plot.eigen.values.normal(50)
plot.eigen.values.normal(100)
#plot.eigen.values.normal(1000)

plot.eigen.values.uniform <- function(n) {
	mat <- matrix(runif(n*n, min = -sqrt(3/n), max = sqrt(3/n)), n, n)
    ev <- eigen(mat)
    values <- ev$values
    plot(values,main=paste("Uniform Distribution-Matrix ",n,"*",n ,sep=" "))
}
plot.eigen.values.uniform(10)
plot.eigen.values.uniform(50)
plot.eigen.values.uniform(100)
#plot.eigen.values.uniform(1000)

plot.samples <- function(n) {
    eigenvalues <- c()
    for(i in 1:100)
    {
        mat <- matrix(rnorm(n*n,mean=0,sd=1/n), n, n)
        ev <- eigen(mat)
        eigenvalues <- c(eigenvalues,ev$values)
    }

    plot(eigenvalues,main=paste("100 matrix samples - ",n,"*",n ,sep=" "))
}
plot.samples(5)
plot.samples(15)
plot.samples(60)
plot.samples(100)