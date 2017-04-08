## ReadMe
This project is the peer-reviewed assessment at the end of week 1 of the course 'Exploratory Data Analysis' on Coursera.
The purpose of this project is to demonstrate  student's ability to generate exploratory graphs using the base plotting system in R.

This assignment uses the “Individual household electric power consumption Data Set” from the UC Irvine Machine Learning Repository https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption


The goal of the assessment is the following:
1. Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
2. Name each of the plot files as plot1.png, plot2.png, etc.
3. Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.
4. Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)

### This repository includes the following files

* ReadMe.md file
* Codebook.md file. It details the variables found in the dataset used.
* plot1.R, plot2.R, plot3.R, plot4.R files. R scripts with the description of each step to generate the required graphs.
* plot1.png, plot2.png, plot3.png, plot4.png files.

### Explanation of the R scripts
1. Setting the working directory
2. Loading packages used in this script
3. Unzipping the dataset necessary for the assessment
4. Reading the dataset used for the assessment and assigning it to an R object
5. Checking the types ofvariables
6. Formatting dates and times in the two original columns. Generating a new column with both dates and times.
7. Selecting the necessary rows that comprise 2 days of data.
8. Converting all the columns with factor variables into numeric variables.
9. Verifying the absence of NAs.
10. Generating the plot.
11. Generating the png figure.
