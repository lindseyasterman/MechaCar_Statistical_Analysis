library(dplyr)
library(tidyverse)

# Deliverable 1
MPG_df <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MPG_df)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MPG_df))

# Deliverable 2
suspension_coil_table <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')


#Deliverable 3

t.test(suspension_coil_table$PSI,mu=mean(suspension_coil_table$PSI))

t.test(subset(suspension_coil_table$PSI,suspension_coil_table$Manufacturing_Lot == "Lot1"),mu=mean(suspension_coil_table$PSI))

t.test(subset(suspension_coil_table$PSI,suspension_coil_table$Manufacturing_Lot == "Lot2"),mu=mean(suspension_coil_table$PSI))

t.test(subset(suspension_coil_table$PSI,suspension_coil_table$Manufacturing_Lot == "Lot3"),mu=mean(suspension_coil_table$PSI))
