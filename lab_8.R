library(FinCal)

# zadanie 1
przeplywy <- c(-33000, -50000, -5350, 17550, 22400, 32700, 35000, 11400, 21400, 21400, 21400, 56400)

r <- 0.01
z <- npv(r, przeplywy)

while (z > 0) {
  z <- npv(r, przeplywy)
  r <- r + 0.01
}
cat('Ostatnie dodatnie r to', r - 0.01)
npv(0.17, przeplywy)
r2 <- 0.18
r1 <- 0.17

IRR <- r1 + ((npv(r1, przeplywy) * (r2 - r1)) / (npv(r1, przeplywy) + (-1) * npv(r2, przeplywy)))
IRR

arc <- seq(0, 0.5, by = 0.01)
yc <- npv(arc, przeplywy)
plot(arc, yc, type = 'l')
zero <- arc * 0
lines(arc, zero)

# zadanie 2
A <- c(-50000, 28000, 43000, 54000, 58000)
B <- c(-50000, 37000, 44000, 46000, 49000)

rgr <- 0.12
r <- 0.18

NCFtAd <- c(0, 28000, 43000, 54000, 58000)
NCFtAu <- c(-50000, 0, 0, 0, 0)
NCFtBd <- c(0, 37000, 44000, 46000, 49000)
NCFtBu <- c(-50000, 0, 0, 0, 0)

s <- 0
for (t in seq(1:length(NCFtAd))) {
  s <- s + NCFtAd[t] * (1 + r)^(4 - t + 1)
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
  s <- s + NCFtBd[t] * (1 + r)^(4 - t + 1)
}
s

s1 <- 0
for (t in seq(1:length(NCFtBu))) {
  s1 <- s1 + abs(NCFtBu[t]) / (1 + r)^(t - 1)
}
s1

MIRRB <- (s/s1)^(1/4)-1
MIRRB

# zmiany
rgr <- 0.15
r <- 0.18


s <- 0
for (t in seq(1:length(NCFtAd))) {
  s <- s + NCFtAd[t] * (1 + r)^(4 - t + 1)
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
  s <- s + NCFtBd[t] * (1 + r)^(4 - t + 1)
}
s

s1 <- 0
for (t in seq(1:length(NCFtBu))) {
  s1 <- s1 + abs(NCFtBu[t]) / (1 + r)^(t - 1)
}
s1

MIRRB <- (s/s1)^(1/4)-1
MIRRB

