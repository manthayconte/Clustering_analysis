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

##importing datasets

df1 <- read.csv('C:\Users\gabriel.conte\Documents\GitHub\countries_by_GNI_clustering\Datasets_CSV\df_1.csv')
