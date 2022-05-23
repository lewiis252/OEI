library(FinCal)
# zadanie 1
r <- 0.03
przeplywy <- c(-8000,6000,5000,4000)

suma <- 0
  t <- 0
  for (kwota in przeplywy){
    suma <- suma + kwota/((1+r)^t)
    t <- t + 1
  }

suma
# npv =  6198.789 > 0, inwestycja jest op³acalna.

# zadanie 2
r <- 0.14
przeplywy <- c(-74000,17800,22900,31000,29800,28900,28600,28600,38700)

suma <- 0
  t <- 0
  for (kwota in przeplywy){
    suma <- suma + kwota/((1+r)^t)
    t <- t + 1
  }

suma
# npv =  50838.74 > 0, inwestycja jest op³acalna.

# zadanie 3
r <- 0.15
przeplywy <- c(-78000,24000,24000,24000,24000)


suma <- 0
  t <- 0
  for (kwota in przeplywy){
    suma <- suma + kwota/((1+r)^t)
    t <- t + 1
  }

suma # = npv
# npv =  -9480.519 > 0, inwestycja jest op³acalna.

# zadanie 4
# r = r_rei = 0.12
r <- 0.12
r_gr <- 0.15

przeplywyA <- c(-2000,-4000,3200,2800,4300)
przeplywyB <- c(-5000,-3000,4400,3800,3900)

NCFtAd <- c(0, 0, 3200, 2800, 4300)
NCFtAu <- c(-2000, -4000, 0, 0, 0)
NCFtBd <- c(0, 0, 4400, 3800, 3900)
NCFtBu <- c(-5000, -3000, 0, 0, 0)

n  <-  length(przeplywyA)-1

s <- 0
for (t in seq(1:length(NCFtAd))) {
  s <- s + NCFtAd[t] * (1 + r)^(n - t + 1)
}
s

s1 <- 0
for (t in seq(1:length(NCFtAu))) {
  s1 <- s1 + abs(NCFtAu[t]) / (1 + r)^(t - 1)
}
s1

MIRRA <- (s/s1)^(1/4)-1
MIRRA

s <- 0
for (t in seq(1:length(NCFtBd))) {
  s <- s + NCFtBd[t] * (1 + r)^(n - t + 1)
}
s

s1 <- 0
for (t in seq(1:length(NCFtBu))) {
  s1 <- s1 + abs(NCFtBu[t]) / (1 + r)^(t - 1)
}
s1

MIRRB <- (s/s1)^(1/4)-1
MIRRB

# cat('here' ,MIRRA, MIRRB)

# MIRRA =  0.1973207 > r_gr, MIRRB = 0.1552197 > r_gr
# obie inwestycje s¹ op³acalne, bardziej op³acalny jest projekt A

# zadanie 5
przeplywy <- c(-74000,17800,22900,31000,29800,28900,28600,28600,38700)
r <- 0.14
r_rei <- 0.17
r_gr <- 0.15

NCFtAd <- c(0,17800,22900,31000,29800,28900,28600,28600,38700)
NCFtAu <- c(-74000,0,0,0,0,0,0,0,0)

n  <-  length(przeplywyA)-1

s <- 0
for (t in seq(1:length(NCFtAd))) {
  s <- s + NCFtAd[t] * (1 + r_rei)^(n - t + 1)
}
s

s1 <- 0
for (t in seq(1:length(NCFtAu))) {
  s1 <- s1 + abs(NCFtAu[t]) / (1 + r)^(t - 1)
}
s1

MIRRA <- (s/s1)^(1/4)-1
MIRRA

# MIRR =  0.2979622 > r_gr inwestycja jest op³acalna

# zadanie 6
przeplywy <- c(-15000,)
r_gr  <- 0.18
stopa_podatkowa <- 0.19

# a)