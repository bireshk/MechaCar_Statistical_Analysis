# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
Below is the screenshot of the lm function (creates a regression model) and then used the summary function to determine the p-value and the r-squared value. The r-squared is a regression error metric that justifies the performance of the model
![Deliverable1_summary](https://user-images.githubusercontent.com/62515666/135733422-ca1d0cd1-4042-4edf-b7ad-a0fd25ff2423.png)

## Summary
* Vehicle weight, spoiler_angle & AWD provided a non-random amount of variance. The two variables that had the most amount of random variance are ground_clearance and vehicle_length
* The slope of the linear model is nearly zero, just be looking at the p-value, which is 2.632e-06
* The main indicator of whether the linear model predicts the mpg of the MechaCar is the r-squared value. In this case, it is at 0.3715 mean that out of 100 instances, this model would approximately predict the mpg of the MechaCar correctly 37 times. This means that the prototype model would be considered not effective.

## Summary Statistics on Suspension Coils

Lot 1 and Lot 2 are both within design specifications and have nearly the same exact mean and median. Lot 3 shows the most variance and exceeds the manufacturers specs.

Following screenshots depicts 
1.	The Total Summary – Mean, Median, Variance and Standard Deviation of the suspension coil table

![Deliverable2_total_summary](https://user-images.githubusercontent.com/62515666/135733436-5799b624-76d4-451e-9f64-08a47dab44e0.png)

2.	The Lot Summary – Mean, Median, Variance and Standard Deviation of the suspension coil table for each Lot

![Deliverable2_lot_summary](https://user-images.githubusercontent.com/62515666/135733441-5b3567a7-45c1-4d3a-97b0-fe750dc3d552.png)
## T-Tests on Suspension Coils
Lot 1 and Lot2 the PSI values are not different from the population mean. However lot 3 p-value is .04168 which means there is evidence that the suspension coil is different from the population mean. All t-tests can be seen below:

## Study Design: MechaCar vs Competition
One feature that drives the market could be how much horsepower the car has. Horsepower, mpg and size of the engine are 3 factors that lead the consumer decision. Our tests to see if MechaCar is much different from the competition. We can make a null hypothesis stating that it is not different from the competition and our Alternative would be the opposite. To do this we will need to use our t-test after collecting data from different types of competitor vehicles. Our t-test will be comparing the population of all types of competitor vehicles.
