# MechaCar_Statistical_Analysis
Using R: perform a multiple linear regression analysis, collect summary statistics and run t-tests to determine statistical differences.

## Linear Regression to Predict MPG
I was able to generate the following linear regression model and determine the p-value and r-squared value with the following code.
```
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MPG_df)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MPG_df))
```

![Del_1](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/Del_1_screenshot.png)

- The variables, vehicle_length and ground_clearance, provide a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is not 0. The p-value is 5.35e-11, which is lower than the 0.05 assumed statistical signifigance. 
- The linear model effectively predicts the mpg of MechaCar prototypes. The r-squared value of 0.7149 determines a 71% probability for accurate predictions.

## Summary Statistics on Suspension Coils
Next, I created a summary and lot dataframes which included the mean, median, variance, and standard deviation of the PSI for all manufacturing lots.

![total_summary](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/total_summary.png)
![lot_summary](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- The total summary suggests that all lots meet design specifications, with a variance of 62 PSI.
- The individual lot summaries tell a much different story.  
- Lot 1 has almost no variance at 0.98. 
- Lot 2 is still well within specifications at a 7.47 variance. 
- Lot 3 greatly exceeds the design specifications at 170.29 variance.  

## T-Tests on Suspension Coils
Finally, I used t-tests to compare manufacturing lots against the mean PSI of the population.

![summary_ttest](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/Resources/summary_ttest.png)
- The summary t-test shows a mean of 1498.78 and p-value of 0.06. The summary is statistically similiar to the mean of the population. 

![Lot1_ttest](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/Resources/Lot1_ttest.png)
- The Lot 1 t-test shows a mean of 1500 and p-value of 1. Lot 1 is statiscally the same as the mean of the population.

![Lot2_ttest](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/Resources/Lot2_ttest.png)
- The Lot 2 t-test shows a mean of 1500.2 and p-value of 0.61. Lot 2 is statiscally similiar to the mean of the population.

![Lot3_ttest](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/Resources/Lot3_ttest.png)
- The Lot 3 t-test shows a mean of 1496.14 and p-value of 0.04.  Lot 3 does not have a p-value higher than the comon significance level of 0.05.  This lot is statistically different than the mean of the population.

## Study Design: MechaCar vs Competition
Are consumers more loyal to MechaCar or the competition?
- Metrics to test: length of ownership, repeat purchase
- Null hypothesis: no statistical difference in brands (statistically unable to predict future brand purchase based on past purchases)
- Alternative hypothesis: correlation between metrics and probability of future purchase 
- Test: two-sample t-test with the independent variable equal to lenght of ownership by brand and the dependent variable equal to repeat purchase rate
- Data: collect purchase dates by brand and individuals over 10+ years
