##installing necessary packages 

install.packages("tidyverse") #collection of R packages designed for data science
install.packages("plotly") #graphic platform
install.packages("ggrepel") #text and label geoms for ggplot2 that help to avoid overlapping texts
install.packages("knitr") #table formatting
install.packages("kableExtra") #table formatting
install.packages("reshape2") #melt function
install.packages("cluster") #agnes function for creating hierarchical clusters
install.packages("factoextra") #fviz-dend function for building dendrograms
install.packages("ade4") #ade4 function for matrix of distances in binary var.

##loading necessary packages

library(tidyverse)
library(plotly)
library(ggrepel)
library(knitr)
library(kableExtra)
library(reshape2)
library(cluster)
library(factoextra)
library(ade4)

##importing dataset

df <- read.csv('Datasets_CSV/Country-data.csv')

##summarizing the dataset, the variables have different units of measure and range

summary(df)

#standardizing the variables

stand_df <- as.data.frame(scale(df[,2:10]))

#setting the correct names for the lines in the standardized df

rownames(stand_df) <- df$country

#the variables will have mean = 0 and sd = 1, that way the range and units of measure are in the same base

round(mean(stand_df$exports),3)
round(mean(stand_df$gdpp),3)

round(sd(stand_df$exports),3)
round(sd(stand_df$gdpp),3)





