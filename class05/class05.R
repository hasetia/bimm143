#' ---
#' title: "Class05 Intro to plots"
#' author: "Harpreet Setia"
#' date: "January 24th, 2019"
#' ---

# Class 5 R graphics intro

# My first box plot
x <- rnorm(1000,0)
boxplot(x)

summary(x)
hist(x)

boxplot(x, horizontal = TRUE)


# Hands on session 2
?read.table()
getwd()
list.files()
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)
weight
plot(weight, typ = "o", pch = 15, cex = 1.5, lwd = 2, ylim = c(2,10), xlab = "Age (months)", ylab = "Weight (kg)", main = "Some title")
?plot
feature_counts <- read.table("bimm143_05_rstats/feature_counts.txt", sep = "\t", header = TRUE)
#margin parameters are usually figured out by guess and check, have no set way of making that ez
par( mar = c (3.1, 11.1, 4.1, 2))
barplot(feature_counts$Count, horiz = TRUE, 
        ylab = "", names.arg = feature_counts$Feature, 
        las = 1, main = "Features of stuff", xlim = c(0,80000))

x <- c(rnorm(10000), rnorm(10000)+4)
hist( x, breaks = 80, col = rainbow(11))

par( mar = c (3.1, 11.1, 4.1, 2))
gender <- read.delim("bimm143_05_rstats/male_female_counts.txt", header = TRUE)
barplot(gender$Count,names.arg = gender$Sample, las = 2, col = c("red", "blue"))


#expression data
e <- read.table("bimm143_05_rstats/up_down_expression.txt", header = TRUE)

#how many genes
nrow(e)

#how many up, how many down and all around?
table(e$State)

plot(e$Condition1, e$Condition2, col = e$State)

#play
palette(c("red", "lightgray","blue"))
plot(e$Condition1, e$Condition2, col = e$State)




