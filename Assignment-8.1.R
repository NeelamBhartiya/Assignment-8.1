#1. Use the package RcmdrPlugin.IPSUR.data(RcmdrTestDrive)and perform the below operations:

install.packages("RcmdrPlugin.IPSUR")

library(RcmdrPlugin.IPSUR)
head(RcmdrTestDrive)

mean(RcmdrTestDrive$salary)

install.packages("plyr")
library(plyr)

library(reshape2)
library(plyr)
library(ggplot2)

#a Calculate the average salary by gender and smoking status.

x<-tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean)

x

tapply(RcmdrTestDrive$salary, RcmdrTestDrive$smoking, mean)


#b. Which gender has the highest mean salary?

#Female     Male 
#698.0911 743.3915

#so its the gender male which is highest


#c.Report the highest mean salary.

mean(RcmdrTestDrive$salary)
#724.5164
#its the mean of salary

which.max(RcmdrTestDrive$salary)
#152
#so at 152 its the highest salary present which is 1156.16


#d.Compare the spreads for the genders by calculating the standard deviation of salary by gender.
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, sd)

#Female     Male 
#130.7053 158.5423


boxplot(salary~gender,data= RcmdrTestDrive,main="salary versus gender",xlab="gender",ylab="salary",col=topo.colors(2))


tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean)

#we can  plot histogram by genders to compare spreadness
hist(which(RcmdrTestDrive$gender == "Male") ,xlab = "gender male", ylab = "frequency",main="hist of gender",col="green")
hist(which(RcmdrTestDrive$gender == "Female") ,xlab = "gender female", ylab = "frequency",main="hist of gender",col="red")





