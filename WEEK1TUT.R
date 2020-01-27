week1 <- read.csv(file="WEEK1TUT.csv", header = TRUE, sep = ",")
week1
#
t.test(week1$ï..Old, week1$New, alternative = "two.sided", paired = FALSE)
