set.seed(666)
n_team <- 22 # число команд
n_stage <- 10 # число слотов
n_play <- 9 # число игр, которое нужно сыграть
no_more <- 0

# строка = кто
# столбец = когда
# внутри = с кем играет
play_table <- matrix(NA, nrow = n_team, ncol = n_stage)

# таблица сыгравших
xy <- matrix(0, nrow = n_team, ncol = n_team)

play_table[1, 1:n_play] <- 2:(n_play + 1)
for (i in 1:n_play) {
  play_table[i + 1, i] <- 1
}
play_table


for (i in 1:n_team) {
  xy[i, i] <- 1
}
xy[1, 2:(n_play + 1)] <- 1
xy[2:(n_play + 1), 1] <- 1
xy


find_opponent <- function(team, stage, xy, play_table, no_more = 0) {
  possible_ops <- 1:n_team

  already_played <- which(xy[team, ] > no_more)
  possible_ops <- setdiff(possible_ops, already_played)

  games_played <- colSums(xy) - 1
  already_max <- which(games_played == n_play)
  possible_ops <- setdiff(possible_ops, already_max)
  
  occupied_ops <- na.omit(play_table[, stage])
  possible_ops <- setdiff(possible_ops, occupied_ops)
  
  if (length(possible_ops) == 0) {
    opponent <- NA
  } else if (length(possible_ops) == 1) {
    # это важно! если длина один, то sample сделает выборку от 1 до possible_ops
    opponent <- possible_ops
  } else {
    opponent <- sample(x = possible_ops, size = 1)
  }
  
  return(opponent)
}


for (team in 2:n_team) {
  played_games <- sum(!is.na(play_table[team, ]))
  
  possible_stages <- which(is.na(play_table[team, ]))
  # possible_stages <- sample(possible_stages)
  
  stage_no <- 1
  while (played_games < n_play) {
    if (stage_no > length(possible_stages)) {
      stop("Not possible!!!!")
    }
    stage <- possible_stages[stage_no]
    
    
    if (is.na(play_table[team, stage])) {
      cat("Team = ", team, "stage = ", stage, "\n")
      
      # if ((team == 17) & (stage == 2)) stop()
      
      
      opponent <- find_opponent(team, stage, xy, play_table, no_more = no_more)
      cat("Opponent = ", opponent, "\n")
      
      print(colSums(xy) - 1)
      
      
      if (!is.na(opponent)) {
        xy[team, opponent] <- xy[team, opponent] + 1
        xy[opponent, team] <- xy[opponent, team] + 1
        play_table[team, stage] <- opponent
        play_table[opponent, stage] <- team
        played_games <- played_games + 1
      }
      print(play_table)
      cat("\n")
    } 
    stage_no <- stage_no + 1
  }
}



