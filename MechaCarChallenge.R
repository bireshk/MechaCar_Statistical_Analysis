# Deliverable 1

library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a DataFrame.
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 

reg <- lm(mpg ~ vehicle_length, data=MechaCar_mpg_table)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(reg)
summary(reg)$r.squared

# Deliverable 2

# Import and read in the Suspension_Coil.csv file as a DataFrame.

Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary using summarize function

total_summary <- summarize(Suspension_Coil_table, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create a lot_summary using the group_by() and the summarize() functions to group each manufacturing lot.

lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI),
                                                                             SD = sd(PSI),
                                                                             .groups = 'keep') #create summary table for each Lot

# Deliverable 3

# using the t.test() function determine if the PSI across all manufacturing lots is statistically different from the 
# population mean of 1,500 pounds per square inch.


t.test(Suspension_Coil_table$PSI,mu=1500)

#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI

lot1 <- subset(Suspension_Coil_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil_table, Manufacturing_Lot=="Lot3")
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)



