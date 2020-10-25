#Reading data from a csv file
elements <- read.csv(file.path("./", "exam_data.csv"))

#Exam 1
maxE1 <- max(elements$Exam1);
minE1 <- min(elements$Exam1);
medianE1 <- median(elements$Exam1);
meanE1 <- mean(elements$Exam1);
varianceE1 <- var(elements$Exam1);


print("Exam 1:")
cat("Max: ",maxE1, " ");
cat("Median: ",medianE1, " ");
cat("Mean: ",meanE1, " ");
cat("Max: ",maxE1, " ");
cat("Variance: ",varianceE1, "\n");
#Exam 2
maxE2 <- max(elements$Exam2);
minE2 <- min(elements$Exam2);
medianE2 <- median(elements$Exam2);
meanE2 <- mean(elements$Exam2);
varianceE2 <- var(elements$Exam2);

print("Exam 2:")
cat("Max: ",maxE2," ");
cat("Median: ",medianE2," ");
cat("Mean: ",meanE2," ");
cat("Max: ",maxE2," ");
cat("Variance: ",varianceE2,"\n");

diffVector <- c()

for (i in 1:length(elements$Exam2))
{
	diffVector[i] = (elements$Exam1[i] - elements$Exam2[i])
}

boxplot(diffVector);


quantile(diffVector);