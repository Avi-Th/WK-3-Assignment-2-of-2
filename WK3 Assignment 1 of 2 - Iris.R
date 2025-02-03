data(iris)

hist(iris$Sepal.Width, main="Sepal Width Histogram",
     xlab="Sepal Width (cm)", col ="lawngreen", border="firebrick1")

# The histogram is right skewed so I expect the mean to be higher

mean_value <- mean(iris$Sepal.Width)
median_value <- median(iris$Sepal.Width)
mean_value
median_value

quantile(iris$Sepal.Width, 0.73)

par(mfrow = c(1,3), mar=c(4,4,3,4))

species_colors <-
  c("setosa" = "darkorchid2", "versicolor" = "aquamarine3", "virginica" = "gold1")

plot(iris$Sepal.Length, iris$Sepal.Width, col=species_colors, pch=4,
     xlab="Sepal Length", ylab="Sepal Width", main="Sepal Length vs Sepal Width")

plot(iris$Sepal.Length, iris$Petal.Length, col=species_colors, pch=4,
     xlab="Sepal Length", ylab="Petal Length", main="Sepal Length vs Petal Length")

plot.new()
legend("center", legend = levels(iris$Species), title="Species",
       fill = c("darkorchid2", "aquamarine3","gold1"))
       
plot(iris$Sepal.Length, iris$Petal.Width, col=species_colors, pch=4,
            xlab="Sepal Length", ylab="Petal Width", main="Sepal Length vs Petal Width")

plot(iris$Sepal.Width, iris$Petal.Length, col=species_colors, pch=4,
            xlab="Sepal Width", ylab="Petal Length", main="Sepal Width vs Petal Length")

plot.new()
legend("center", legend = levels(iris$Species), title="Species",
       fill = c("darkorchid2", "aquamarine3","gold1"))
       
plot(iris$Sepal.Width, iris$Petal.Width, col=species_colors, pch=4,
            xlab="Sepal Width", ylab="Petal Width", main="Sepal Width vs Petal Width")

plot(iris$Petal.Length, iris$Petal.Width, col=species_colors, pch=4,
            xlab="Petal Length", ylab="Petal Width", main="Petal Length vs Petal Width")

plot.new()
       legend("center", legend = levels(iris$Species), title="Species", 
              fill = c("darkorchid2", "aquamarine3","gold1"))
              
# Sepal Length vs Petal Length and Petal Length vs Petal Width have the strongest relationship
# Sepal Length vs Sepal Width and Sepal Length vs Petal Width seem to have the weakest relationship