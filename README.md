This project analyzes gene expression data from a neurogenomics study comparing three brain regions (prefrontal cortex, hippocampus, and amygdala) in control vs. Alzheimer's disease patients.
I loaded required libraries Load required libraries
library(ggplot2)  
library(dplyr): to Filter, sort, and transform data
library(tidyr): to reshape data into a "tidy" format,
neuro_data <- read.csv: Load the raw gene expression data from CSV
neuro_long <- pivot_longer: Convert to long format for ggplot2
neuro_plot <- ggplot(neuro_long: Convert to long format for ggplot2
geom_boxplot: Add boxplots
geom_jitter: Add individual data points
facet_wrap: Create separate panels for each gene
scale_fill_manual: Custom color scheme
labs: Labels and titles
theme_bw:Theme customization
print(neuro_plot): Display the plot
This analysis reveals:

Gene1 shows decreased expression in Alzheimer's samples across all regions

Gene2 has the largest difference in hippocampus

Gene3 shows increased expression in Alzheimer's patients
