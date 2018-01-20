college <- read.csv('/home/bryce/OneDrive/Courses/Statistics Textbook/ISLR_Examples/College/College.csv')
rownames(college) = college[,1]
college = college[,-1]

#Create variable summary
collegeSummary <- summary(college)


#Create scatterplot
pairs(college[,1:10])

#Create boxplot
boxplot(Outstate~Private,data=college)

#Create new row for elite

Elite = rep("No",nrow(college))
Elite[college$Top10perc>50] = "Yes"
Elite = as.factor(Elite)
college = data.frame(college,Elite)
summary(college)

# Box plot for Elite
boxplot(Outstate~Elite,data=college)

# Histograms
par(mfrow=c(2,2))
hist(college$Apps,breaks=10)
hist(college$Expend,breaks=20)
hist(college$Enroll,breaks=15)
hist(college$PhD,breaks=5)
