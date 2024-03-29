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
install.packages("misc3d") #3D graphics
install.packages("plot3D") #3D graphics
install.packages("openxlsx") #used to export the dataset to a excel file

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
library(misc3d)
library(plot3D)
library(openxlsx)


##importing dataset

df <- read.csv('https://github.com/manthayconte/clustering_countries_by_development/blob/main/Datasets_files/Country-data.csv')

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

##beginning the clustering process - Method: k-means

#using the elbow method to identify how many clusters we should use in this df

fviz_nbclust(stand_df[,1:9], kmeans, method = "wss")

#when analyzing the graph, it is observed that the sum of squares has 
#little variation after 6 clusters, indicating this as the ideal number of clusters


#creating the clustering process:

cluster_df <- kmeans(stand_df[,1:9], centers = 6)

#creating the variable with the clusters in the datasets

stand_df$cluster_k <- factor(cluster_df$cluster)
df$cluster_k <- factor(cluster_df$cluster)

#analyzing using descriptive statistics

analysis <- group_by(df, cluster_k) %>% 
  summarise(child_mortality = mean(child_mort, na.rm = TRUE),
            exports = mean(exports, na.rm = TRUE),
            health = mean(health, na.rm = TRUE),
            imports = mean(imports, na.rm = TRUE),
            income = mean(income, na.rm = TRUE),
            inflation = mean(inflation, na.rm = TRUE),
            life_expec = mean(life_expec, na.rm = TRUE),
            gdpp = mean(gdpp, na.rm = TRUE),
            total_fer = mean(total_fer, na.rm = TRUE))

analysis %>% 
  kable(row.names = T) %>% 
  kable_styling(bootstrap_options = "striped",
                full_width = FALSE,
                font_size = 20)

#exporting the dataset to a excel file

write.xlsx(df, 'https://github.com/manthayconte/clustering_countries_by_development/blob/main/Datasets_files/df_clusters.xlsx', colnames = TRUE)

