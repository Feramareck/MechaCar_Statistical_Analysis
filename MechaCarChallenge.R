library(tidyverse)

#PART 1:
mechacar <- read.csv('MechaCar_mpg.csv') 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)) #generate summary statistics

#PART 2:
suspendion_coil <- read.csv('Suspension_Coil.csv') 
total_summary <- suspendion_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sqrt(var(PSI)))
lot_summary <- suspendion_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sqrt(var(PSI)))

#PART 3:
# all lots
sample <- suspendion_coil %>% sample_n(50) 
t.test(log10(sample$PSI),mu=mean(log10(suspendion_coil$PSI))) 
#Lot1
lot1 <- subset(suspendion_coil, Manufacturing_Lot == 'Lot1')
t.test(log10(lot1$PSI),mu=mean(log10(suspendion_coil$PSI))) 
#Lot2
lot2 <- subset(suspendion_coil, Manufacturing_Lot == 'Lot2')
t.test(log10(lot2$PSI),mu=mean(log10(suspendion_coil$PSI))) 
#Lot3
lot3 <- subset(suspendion_coil, Manufacturing_Lot == 'Lot3')
t.test(log10(lot3$PSI),mu=mean(log10(suspendion_coil$PSI))) 

