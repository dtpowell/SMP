model<-aov(Mass.Data$Weight~Mass.Data$Treatment)

summary(model)

data <-read.csv("Mass Data.csv",header=TRUE)
data
barplot(tapply((data$Weight), list(data$Treatment), mean))
sd<-(tapply((data$Weight), list(data$Treatment), sd))
sd
se<-((sd)/(sqrt(6)))
se
bar<-barplot(tapply((data$Weight), list(data$Treatment), mean), ylim=c(0, 0.5), xlab="Salt Treatments", ylab="Mass (g)", col=c ("blue", "blue", "blue", "blue"))
bar
x.value<-(tapply((data$Weight), list(data$Treatment), mean))

arrows(bar, x.value + se, bar, x.value - se, length = 0.25, code = 3, angle =90, lwd = 2)
