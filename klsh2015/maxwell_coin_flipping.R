library("dplyr")
library("ggplot2")
library("reshape2")
library("animation")

n_sim <- 1000 # число экспериментов по подбрасывани монетки
n_throw <- 10^6 # сколько раз подбрасываем монетку в каждом опыте

profits <- matrix(0, nrow=n_sim, ncol=3) # резервируем место для выигрышей команд A, B, J

str_A <- function(cum_seq) { # Антон Шабат
  # функция возвращающая по последовательности накопленных орлов 
  # момент остановки команды A
  
  
  if (cum_seq[1]==1) {
    first_stop <- 1
  } else {
    first_stop <- n_throw
  }
  return(first_stop)
}

str_B <- function(cum_seq) { # Олег Васильев
  # функция возвращающая по последовательности накопленных орлов 
  # момент остановки команды B

  proportions <- cum_seq/(1:n_throw)
  to_stop <- proportions >= 0.5 + 1/5/sqrt(1:n_throw) # находим те моменты, когда доля орлов больше константы
  to_stop[n_throw] <- TRUE # на всякий случай тормозим в последний момент
  first_stop <- which.max(to_stop) # находим первый момент, когда доля орлов была больше константы
  return(first_stop)
}


str_J <- function(cum_seq) {
  # функция возвращающая по последовательности накопленных орлов 
  # момент остановки команды J
  
  
  proportions <- cum_seq/(1:n_throw)
  to_stop <- proportions>0.625 # находим те моменты, когда доля орлов больше константы
  to_stop[n_throw] <- TRUE # на всякий случай тормозим в последний момент
  first_stop <- which.max(to_stop) # находим первый момент, когда доля орлов была больше константы
  return(first_stop)
}



for (i in 1:n_sim) {
  message("Simulation ",i," out of ",n_sim)
  # генерируем последовательность орлов
  coins <- sample(x=c(0,1), replace = TRUE, size = n_throw)

  cum_coins <- cumsum(coins) # считаем накопленное количество орлов
  

  # считаем моменты времени, когда останавливаются стратегии игроков
  t_stop_A <- str_A(cum_coins)
  t_stop_B <- str_B(cum_coins)
  t_stop_J <- str_J(cum_coins)
  
  # считаем доход каждой стратегии
  profit_A <- cum_coins[t_stop_A]/t_stop_A
  profit_B <- cum_coins[t_stop_B]/t_stop_B
  profit_J <- cum_coins[t_stop_J]/t_stop_J
  
  # сохраняем все доходы
  profits[i,] <- c(profit_A,profit_B,profit_J)
}

head(profits)

# считаем накопленное среднее по экспериментам
cummean_pro <- apply(profits, 2, cummean)
cmean_df <- as.data.frame(cummean_pro)

colnames(cmean_df) <- c("A","B","J")
cmean_df$sim_no <- 1:n_sim

cmean_melt <- melt(cmean_df, id.vars="sim_no")

head(cmean_melt)

# строим график
qplot(data=cmean_melt, x=sim_no, y=value, col=variable, geom="line")

tail(cmean_df,1)


draw_curve <- function(cutoff) {
  a <- ggplot(cmean_melt, aes(x=sim_no,y=value)) +
    geom_line(data=filter(cmean_melt, sim_no <= cutoff), aes(x=sim_no,y=value, col=variable), size=1.3) + 
    scale_x_continuous(limits=c(1, n_sim)) + 
    scale_y_continuous(limits=c(0.73, 0.85))
  print(a)
}

draw_curve(n_sim)


saveGIF(
  for(i in seq(from=2,to=n_sim, by=20)){ draw_curve(i) }, 
  interval = .2, movie.name="trace.gif")


