library(ggplot2)

data("PlantGrowth")

ggplot(PlantGrowth, aes(x = weight)) +
  geom_histogram(binwidth = 0.3,
                 color = "coral1",
                 fill = "yellowgreen",
                 boundary = 3.3) +
  labs(title = "Plant Weight", x = "Weight", y ="Frequency")

ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) +
  geom_boxplot() +
  labs(title = "Weight separated by Group", x = "Group", y = "Weight") +
  scale_fill_manual(values = c("ivory", "peachpuff", "sienna1"))

# It looks like only 2 weights of trt1 are above the trt2 minimum, since trt1 has 10 data sets,
# I estimate that 80% of trt1 weight is below trt2 minimum

min_weight_trt2 <- min(PlantGrowth$weight[PlantGrowth$group == "trt2"])

weight_trt1 <- PlantGrowth$weight[PlantGrowth$group == "trt1"]

percent_trt1_below_min_trt2 <- mean(weight_trt1 < min_weight_trt2) * 100

cat(percent_trt1_below_min_trt2, "% of the trt1 weights are below the minimum trt2 weight.")

PlantGrowth_above_5.5 <- subset(PlantGrowth, weight > 5.5)

ggplot(PlantGrowth_above_5.5, aes(x = group, fill = group)) +
  geom_bar() +
  labs(title = "Plants with weight > 5.5", x = "Group", y = "Count") +
  scale_fill_manual(values = heat.colors(3))