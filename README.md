# MechaCar Statistical Analysis
## Overview of Project
Working with AutoRUs on the production of their new prototype, MechaCar as there have been issues interfering with the manufacturer's team. Through statistical analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes as well as run statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. From this analysis, we compare the manufacturing lots to discover if they are statistically different from the mean population followed by a comparison of vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG
Using the p-value, we analyzed how each coefficient contributes a random amount of variance. It was found that the vehicle length and ground clearance did provide non-random amount of variance to the mpg. The MPG is greatly affected by these factors.  

Considering that there was more than one factor that affected MPG, the slope of our linear model is not zero. We know this because the p-values are less than 0.05. With this information, we can reject the null hypothesis. 

After completion of the analysis, it was found that the linear model fit the current data provided. However, due to the variance seen in two factors, two of the dependent variables, the linear model may not be a good prediction of the MPG for the MechaCar in the future. 

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/102122063/180669092-905c2a6e-e466-4f54-9675-abb368ea5dec.PNG)

## Summary Statistics on Suspension Coils
Focusing on the suspension coils of the MechaCar prototype, the variance needs to be less than 100 PSI. First, reviewing all the lots, we found the variance did not exceed 100 PSI and meets specifications. Yet, when we look at each individual lot, we found varying results. Lots 1 and 2 had variances less than 100. The data for Lot 3, however, had a variance of 170.286 PSI, which exceeds the specifications and will need to improve during manufacturing. 

**Summary Total**
![Summary_Total_df](https://user-images.githubusercontent.com/102122063/180669105-995837f7-c4cd-497f-af79-f64d0626145c.PNG)

**Lot Summary**
![Lot_Summary_df](https://user-images.githubusercontent.com/102122063/180669108-2b6eb104-d71a-4127-8879-e188e995a070.PNG)

## T-Tests on Suspension Coils
The next step in our analysis was performing t-tests on the suspension coils to compare with vehicles from other manufacturers. The t-tests for all lots fails to reject the null hypothesis due to the p-value being greater than 0.05. The same can be said for Lot 1 and Lot2. Looking at Lot 3 again, the p-value is less than 0.05 which means this data rejects the null hypothesis and the true mean does not equal 1500. 

![t test All Lots](https://user-images.githubusercontent.com/102122063/180669118-be9de323-4211-46dd-a0d0-940855dbdee9.PNG)

![t test lot 1 2 3](https://user-images.githubusercontent.com/102122063/180669122-28995156-9f71-4a00-b812-2d44eafbf55c.PNG)


## Study Design: MechaCar vs Competition
Highway fuel efficiency is a top concern for consumers as it can help the car owner save money over time to purchase fuel while also appealing to the more environmentally friendly. Comparing the fuel efficiency of the MechaCar with its competitors would be an insightful next step and study. AutoRUs will need to gather more data, specifically looking at MPG and EPA ratings.  The main goal of the study would be to have the null hypothesis be that there is no difference between MechaCar fuel efficiency and its competitors. For this study, two sample t-tests could be performed for MechaCar and each of its competitors on its MPG and EPA rating. 
