# title: Data Preparation
### description: create a .csv file with all the players' shots data
### input: .csv files of players' data
### output: .csv file of players' shots data

# read player data 
iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE)
curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)

# add column name to data frame 
iguodala$name = "Andre Iguodala"
green$name = "Draymond Green"
durant$name = "Kevin Durant"
thompson$name = "Klay Thompson"
curry$name = "Stephen Curry"

# change values of shot_made_flag from "n" to "shot_no" and from "y" to "shot_yes"
iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] <- "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] <- "shot_yes"
green$shot_made_flag[green$shot_made_flag == "n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] <- "shot_yes"
durant$shot_made_flag[durant$shot_made_flag == "n"] <- "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] <- "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] <- "shot_yes"
curry$shot_made_flag[curry$shot_made_flag == "n"] <- "shot_no"
curry$shot_made_flag[curry$shot_made_flag == "y"] <- "shot_yes"

# add column for the minute in which a shot occurred
iguodala$minute = iguodala$period * 12 - iguodala$minutes_remaining
green$minute = green$period * 12 - green$minutes_remaining
durant$minute = durant$period * 12 - durant$minutes_remaining
thompson$minute = thompson$period * 12 - thompson$minutes_remaining
curry$minute = curry$period * 12 - curry$minutes_remaining

# export a summary of player's data frame as a .txt file in output folder 
sink("../output/andre-iguodala-summary.txt")
summary(iguodala)
sink()
sink("../output/draymond-green-summary.txt")
summary(green)
sink()
sink("../output/kevin-durant-summary.txt")
summary(durant)
sink()
sink("../output/klay-thompson-summary.txt")
summary(thompson)
sink()
sink("../output/stephen-curry-summary.txt")
summary(curry)
sink()

# stack data frames of all players into one
shots_data <- rbind(iguodala, green, durant, thompson, curry)

# export the data frame with all players as a .csv file in data folder
write.csv(
  x = shots_data,
  file = "../data/shots-data.csv"
)

# export a summary of all players data frame as a .txt file in output folder
sink("../output/shots-data-summary.txt")
summary(shots_data)
sink()



