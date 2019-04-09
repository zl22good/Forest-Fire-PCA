fire = read.csv("forestfires.csv")
#install.packages("corrplot")
library(corrplot)
summary(fire)
fires = fire[,c(3:9)]
fires = cor(fires)
corrplot(fires, method = "circle")

fire.pca <- prcomp(fire[,c(7:8)])#, center = TRUE,scale. = TRUE)
#fire
#summary(fire.pca)
#str(fire.pca)
#fire.pca
#install.packages("devtools")
#library(devtools)
#install_github("vqv/ggbiplot")
library(ggbiplot)

ggbiplot(fire.pca,ellipse=TRUE, groups=fire$month,varname.size = 5,varname.adjust = 6)

fire.pca <- prcomp(fire[,c(3,6)])#, center = TRUE,scale. = TRUE)

ggbiplot(fire.pca,ellipse=TRUE, groups=fire$month,varname.size = 5,varname.adjust = 1)

fire.pca <- prcomp(fire[,c(4,5)])#, center = TRUE,scale. = TRUE)

ggbiplot(fire.pca,ellipse=TRUE, groups=fire$month,varname.size = 5,varname.adjust = 1)
