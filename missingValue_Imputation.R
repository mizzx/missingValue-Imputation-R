library(missMethods)
library(pcaMethods)

Data=read.table("gds4085.txt", header=TRUE, sep="\t")

sum(is.na(Data))

#missing value imputation using missMethods
mean_imp= impute_mean(Data)
median_imp= impute_median(Data)
mod_imp= impute_mode(Data)

#missing value imputation using pcaMethods
pc_data = pca(Data, nPCs=2, method="ppca")
summary(pc_data)

Exps_data= completeObs(pc_data)
