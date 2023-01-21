# clustering_countries_by_development

Basic analysis of a dataset acquired in kaggle using R for clustering and Tableau for visualization

This project demonstrates a clustering analysis using k-means method. The purpose of this analysis is to group similar countries together based on various socioeconomic and health indicators.

Dataset source: https://www.kaggle.com/datasets/rohan0301/unsupervised-learning-on-country-data

The code will perform the following operations:
- Summarizing the dataset
- Standardizing the variables
- Identifying the number of clusters using the elbow method
- Performing k-means clustering
- Creating a new variable "cluster_k" to indicate the cluster to which each country belongs
- Creating a summary table of the mean values of each variable for each cluster
- Exporting the resulting dataset to an excel file named "df_clusters.xlsx" to be used in Tableau.

The analysis vizualization its on my Tableau public profile: https://public.tableau.com/app/profile/gabriel.conte/viz/clustering_countries_by_development/Painel1
