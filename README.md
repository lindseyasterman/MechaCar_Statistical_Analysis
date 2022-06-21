# MechaCar_Statistical_Analysis
Using R to perform a multiple linear regression analysis, collect summary statistics and run t-tests to determine statistical differences

## Linear Regression to Predict MPG
I was able to generate the following linear regression model and determine the p-value and r-squared value with the following code.
```
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MPG_df)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MPG_df))
```

![Del_1](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/Del_1_screenshot.png)

- The variables vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is not 0. The p-value is 5.35e-11, which is lower than the 0.05 assumed statistical signifigance. 
- The linear model effectively predicts the mpg of MechaCar prototypes. The r-squared value of 0.7149 determines a 71% probability for accurate predictions.

## Summary Statistics on Suspension Coils
Next, I created summary and lot dataframes which included the mean, median, variance, and standard deviation of the PSI for all manufacturing lots.

![total_summary](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/total_summary.png)
![lot_summary](https://github.com/lindseyasterman/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- The total summary suggests that all lots meet design specifications, with a variance of 62 PSI.
- The individual lot summaries tell a much different story.  
- Lot 1 has almost no variance at 0.98. 
- Lot 2 is still well within specifications at a 7.47 variance. 
- Lot 3 greatly exceeds the design specifications at 170.29 variance.  