library(factoextra)

library(NbClust)

train <- dataset_CLUSTERS

train[which(train=="?",arr.ind=TRUE)]<-NA

train <- data.frame(lapply(train,as.numeric))

df <- scale(train)

#fviz_nbclust(df, kmeans, method = "wss") + geom_vline(xintercept = 4, linetype = 2)+ labs(subtitle = "Elbow method")
fviz_nbclust(df, kmeans, method = "silhouette")+ labs(subtitle = "Silhouette method")

