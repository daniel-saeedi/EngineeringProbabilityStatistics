elements <- read.csv("./outcome.csv", head = TRUE,",")

df <- data.frame(elements)

df[df==""] <- NA

colnames(df)

head(df,10)

table(df$race)

counts <- table(df$income, df$nativecountry)

counts[counts==0] <- NA # because log(0) is not defined

barplot(counts, main="Count (Income) vs Native Country",
        ylab="log (Count (Income))",
        col = cm.colors(2),                  # set column colors
        legend = rownames(counts),           # legend variables
        args.legend = list(x = "top"),       # legend position
        las = 2,                             # Rotate x labels name 90 degree
        beside=TRUE,                         # columns of a row come beside 
        log='y',                             # y axis in logarithm
        )


mosaicplot(table(df$income, df$education),
           las = 2,
           shade=TRUE,
           )

plot(ecdf(df$age), xlab="age", ylab="cumulative distribution function")