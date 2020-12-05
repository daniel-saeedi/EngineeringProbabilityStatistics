#Probability of success
p <- 0.6
#Number of experiments
n <- 10;
Binomial <- function() {
	Y <- 0;
	for(i in 1:n)
	{
		#U~Uniform(0,1)
		U <- runif(1, min = 0, max = 1)
		#X~Ber(p)
		X <- (U < p)
		#Y~binomial(n=10,p=0.6)
		Y <- Y + X
	}
	return(Y)
}
#numbef of samples
num_samples <- 100
samples <- c()
for(i in 1:num_samples)
{
	new_sample <- Binomial();
	samples <- c(samples,new_sample);
}
mean(samples)
var(samples)