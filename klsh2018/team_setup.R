set.seed(777)
n_team <- 22 # число команд
n_stage <- 11 # число слотов
n_play <- 9 # число игр, которое нужно сыграть

# строка = кто
# столбец = когда
# внутри = с кем играет
play_table <- matrix(NA, nrow = n_team, ncol = n_stage)

play_table[1, 1:n_play] <- 2:(n_play + 1)
for (i in 1:n_play) {
  play_table[i + 1, i] <- 1
}
play_table

# таблица сыгравших
xy <- matrix(FALSE, nrow = n_team, ncol = n_team)
for (i in 1:n_team) {
  xy[i, i] <- TRUE
}
xy[1, 2:(n_play + 1)] <- TRUE
xy[2:(n_play + 1), 1] <- TRUE
xy


find_opponent <- function(team, stage, xy, play_table) {
  possible_ops <- 1:n_team

  already_played <- which(xy[team, ])
  possible_ops <- setdiff(possible_ops, already_played)

  games_played <- colSums(xy) - 1
  already_max <- which(games_played == n_play)
  possible_ops <- setdiff(possible_ops, already_max)
  
  occupied_ops <- na.omit(play_table[, stage])
  possible_ops <- setdiff(possible_ops, occupied_ops)
  
  if (length(possible_ops) == 0) {
    opponent <- NA
  } else {
    opponent <- sample(possible_ops, size = 1)
  }
  
  return(opponent)
}


for (team in 2:n_team) {
  played_games <- sum(!is.na(play_table[team, ]))
  stage <- 1
  while (played_games < n_play) {
    if (is.na(play_table[team, stage])) {
      cat("Team = ", team, "stage = ", stage, "\n")
      opponent <- find_opponent(team, stage, xy, play_table)
      cat("Opponent = ", opponent, "\n")
      # if ((team == 16)) stop()
      if (!is.na(opponent)) {
        xy[team, opponent] <- TRUE
        xy[opponent, team] <- TRUE
        play_table[team, stage] <- opponent
        play_table[opponent, stage] <- team
        played_games <- played_games + 1
      }
      print(play_table)
      cat("\n")
    } 
    stage <- stage + 1
  }
}



