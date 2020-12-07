library(corrplot)
elements <- read.csv("./countries.csv", head = TRUE,",")

df <- data.frame(elements)

df[df==""] <- NA
#replacing NA values with mean of their column
for(i in 1:ncol(df))
{
  df[is.na(df[,i]), i] <- mean(df[,i], na.rm = TRUE)
}
matrix <- data.matrix(df);
correlation_matrix <- cor(matrix);
correlation_matrix

corrplot(correlation_matrix)
plot(df$Agriculture, df$Birthrate, main = "Agriculture vs Birthrate",
     xlab = "Agriculture", ylab = "Birthrate",
     pch = 19, frame = FALSE)
lines(lowess(df$Agriculture, df$Birthrate), col = "blue")

relation <- lm(Agriculture~Birthrate,df)
relation