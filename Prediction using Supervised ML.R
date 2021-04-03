task1 <- read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv", header = TRUE)
attach(task1)
View(task1)
head(task1)

#variables storage
x <- task1$Hours
y <- task1$Scores

#visualization
plot(y ~ x, xlab = 'Study Hours',
     ylab = 'Score of Students', main = 'Study Hours vs Score of Students',
     xlim=c(1,10), ylim=c(20,100), pch=20, col='red')

#simple linear regression model formula
task1.reg <- lm (Scores ~ Hours, data = task1)

#fitted line
abline(task1.reg, col = 'blue')

#summary of regression model
print(summary(task1.reg))

#predicted score for a particular time
study_hour <- data.frame(Hours=9.25)
prediction <- predict(task1.reg, study_hour)
print(prediction)

