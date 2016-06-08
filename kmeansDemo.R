## k-means Demo

x <- seq(from=1,to=10,length.out = 100)
y1 <- rnorm(50, 4, 0.5)
y2 <- rnorm(50, 8, 0.5)
y <- c(y1,y2)
plot(x,y)
obs <- data.frame(x,y)
kmeansObj <-  kmeans(obs, centers = 2)
plot(x,y, col= kmeansObj$cluster)

## Hierarchical Clustering

distM <- dist(obs)
clusters <- hclust(distM, method = "ward.D")
plot(clusters)
mem <- cutree(clusters, k =2)
plot(x,y, col=mem)