# title: Shot Charts
# description: create shot charts of every player
# input: players' shots data .csv file
# output: .pdf and .png files with players' shot visualization

# load packages
library(ggplot2)
library(grid)
library(jpeg)
library(dplyr)

# read data of all players
shots_chart_data <- read.csv("../data/shots-data.csv", stringsAsFactors = FALSE)

# download court image
court_file <- "../images/nba-court.jpg"

# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

# data frame of Iguodala's data
andre <- filter(shots_chart_data, name == "Andre Iguodala")

# scatterplot of Iguodala's shots
andre_scatterplot <- ggplot(data = andre) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

# Iguodala's shot chart
andre_shot_chart <- ggplot(data = andre) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle ("Shot Chart: Andre Iguodala (2016 season)") +
  theme_minimal()

# export Igduodala's shot chart as a pdf in images folder
pdf(file = "../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5)
andre_shot_chart
dev.off()

# data frame of Green's data
draymond <- filter(shots_chart_data, name == "Draymond Green")

# scatterplot of Green's shots
draymond_scatterplot <- ggplot(data = draymond) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

# Green's shot chart
draymond_shot_chart <- ggplot(data = draymond) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle ("Shot Chart: Draymond Green (2016 season)") +
  theme_minimal()

# export Green's shot chart as a pdf in images folder
pdf(file = "../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
draymond_shot_chart
dev.off()

# data frame of Durant's data
kevin <- filter(shots_chart_data, name == "Kevin Durant")

# scatterplot of Durant's shots
kevin_scatterplot <- ggplot(data = kevin) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

# Durant's shot chart
kevin_shot_chart <- ggplot(data = kevin) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle ("Shot Chart: Kevin Durant (2016 season)") +
  theme_minimal()

# export Durant's shot chart as a pdf in images folder
pdf(file = "../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
kevin_shot_chart
dev.off()

# data frame of Thompson's data
klay <- filter(shots_chart_data, name == "Klay Thompson")

# scatterplot of Thompson's shots
klay_scatterplot <- ggplot(data = klay) +
 geom_point(aes(x = x, y = y, color = shot_made_flag))

# Thompson's shot chart
klay_shot_chart <- ggplot(data = klay) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle ("Shot Chart: Klay Thompson (2016 season)") +
  theme_minimal()

# export Thompson's shot chart as a pdf in images folder
pdf(file = "../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
klay_shot_chart
dev.off()

# data frame of Curry's data
stephen <- filter(shots_chart_data, name == "Stephen Curry")

# scatterplot of Curry's shots
stephen_scatterplot <- ggplot(data = stephen) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

# Curry's shot chart
stephen_shot_chart <- ggplot(data = stephen) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle ("Shot Chart: Stephen Curry (2016 season)") +
  theme_minimal()

# export Curry's shot chart as a pdf in images folder
pdf(file = "../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5)
stephen_shot_chart
dev.off()

# shot charts of all players
gsw_shot_charts <- ggplot(data = shots_chart_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle ("Shot Chart: GSW (2016 season)") +
  theme_minimal() +
  facet_wrap(~ name)

# export shot charts of all players as a pdf in images folder
pdf(file = "../images/gsw-shot-charts.pdf", width = 8, height = 7)
gsw_shot_charts
dev.off()

# export shot charts of all players as a png in images folder
png(filename = "../images/gsw-shot-charts.png", res = 75)
gsw_shot_charts
dev.off()



