
The purpose of this data analysis is to review production data for insights that might help the manufacturing team for the MechaCar, AutosRUs newest prototype that is suffering from production issues.
For this study we performed:
- Multiple linear regression to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- We collect summary statistics on pounds per square inch (PSI) of suspension coils from manufacturing lots.
- We run t-tests to determine whether manufacturing batches are statistically different from the population mean.
- We designed a statistical study to compare the performance of MechaCar vehicles with vehicles from other manufacturers.
Below we detail each part of this analysis.

## Linear Regression to Predict MPG
According to our results, vehicle lenght and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the mpg values.
In this case, the slope of the linear model should not be assumed to be zero because the model provides variables that have a significant impact on mpg values.
This linear model do not predict mpg of MechaCar prototypes effectively because the intercept is statistically significant, meaning that there are other variables and factors that contribute to the variation in mpg that have not been included in the model.

Part 2:
## Summary Statistics on Suspension Coils
In this topic we perform the summary statistics where we analyze the PSI and the lots as a whole and also analyzing the lots separately.
Observing the results above and assuming that the design specifications that MechaCar determine that the variance of the suspension coils must not exceed 100 pounds per square inch in the analysis of the current manufacturing lots, we can verify that:
1 - The variance for all lots together was 62.29, which is within the design specification.
2 - The variance of the each lot individually did not follow the total analysis, with Lot1 and Lot2 within the specification (0.97 and 7.46) and Lot3 not meeting the requirement with a variance of 170.28.

Part 3:
## T-Tests on Suspension Coils 
We performed the t-test to determine if all manufacturing lots are statistically different from the population mean. Looking at the p-value of 0.49 and assuming our significance level is the common 0.05 percent, the p-value is above the significance level. Therefore, we do not have enough evidence to reject the null hypothesis and we state that the two means are statistically similar.
For the analysis of Lot 1 and Lot 2, the T-Test showed a p-value lower than the significance level (9.35e-12 and 0.0005082, respectively) so we have enough evidence to reject the null hypothesis and state that the two means are statistically different.
As for Lot 3 the T Test showed a p-value higher than the significance level (0.1549) we do not have enough evidence to reject the null hypothesis and state that the PSI means of Lot 3 and the population are statistically similar.

## Study Design: MechaCar vs Competition
In order to quantify MechaCar's performance in relation to the competition, we propose a statistical study with metrics that we consider to be of interest to the consumer: fuel economy vs car weight.
In order to carry out this study, in addition to the variables already present in the MechCar database for competition, we need the fuel consumption variables for the city and the highway.
Hypothesis: If the car's weight directly influences fuel consumption, reducing its mass by 10% would reduce fuel consumption.
Null hypothesis: If we reduce the mass of an automobile by 10%, there will be no reduction in fuel consumption.
Alternative hypothesis: If we reduce the mass of an automobile by 10%, fuel consumption will also be reduced.
This hypothesis should be tested both for fuel consumption in the city and for fuel consumption on the highway.
To do so, we will use simple linear regression as a statistical test to verify the behavior of the dependent variable (fuel consumption) as a function of the independent variable (car weight).


