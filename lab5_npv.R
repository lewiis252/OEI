# strony 28 41 49
library(FinCal)
library(hash)

my_NPV <- function (r, przeplywy){
  suma <- 0
  for (t in seq_along(przeplywy)) {
    suma <- suma + przeplywy[t] / ((1+r)^(t-1))
  }
  suma
}

NPV <- function (r, przeplywy){
  suma <- 0
  t <- 0
  for (kwota in przeplywy){
    suma <- suma + kwota/((1+r)^t)
    t <- t + 1
  }
  suma
}

calculate_r <- function (uw=1, kw=0.2, ud=0, i=0, ip=0.1){
  r <- uw * kw + ud * i * (1-ip)
  return(r)
}

# zadanie 1
przeplywy <- c(-20000, -20000, 9500, 12000, 12500, 12300, 11400, 17700)
r <- calculate_r(0.4,0.12,0.6,0.19,0.1)

npv(r, przeplywy)
my_NPV(r, przeplywy)
NPV(r, przeplywy)

# zadanie 2
r <- calculate_r(uw=1, kw=0.19, ud=0,i=0, ip=0.1)
r

przeplywyA <- c(-5000,1000,2000,4000,3000,2000,1000,1500)
przeplywyB <- c(-9000,0,3000,4000,3500,4200,3800,1200)

npv(r, przeplywyA)
npv(r, przeplywyB)
NPV(r, przeplywyA)
NPV(r, przeplywyB)

# zadanie 3
przeplywy <- c(-6000, 1000, 1200, 2000, 1800)
r <- calculate_r(kw=0.2)

NPV(r, przeplywy)
npv(0.2, przeplywy)

# zadanie 4
