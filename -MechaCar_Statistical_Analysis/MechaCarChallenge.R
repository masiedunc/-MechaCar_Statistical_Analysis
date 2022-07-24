# Linear Regression to Predict MPG
library(dplyr)

# Mecha Car Dataframe
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_df))

# Summary Statistics on Suspension Coils
suspension_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

summary_total <- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI),.groups = 'keep') 
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI),.groups = 'keep')

# T-Tests on Suspension Coils
t.test(x=suspension_df$PSI, mu = 1500)
t.test(subset(suspension_df,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_df,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_df,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
