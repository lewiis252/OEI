# zadanie 10
library(FinCal)

r <- 0.12
CIF <- c(0, 0, 500, 400, 600)
COF <- c(400, 900, 0, 0, 0)

generuj_wektor_dyskont <- function(r, dlugosc_wektora) {
  wektor_dyskont <- c()
  for (t in 1:dlugosc_wektora) {
    wektor_dyskont[t] <- (1 + r)^(t - 1)
  }
  return(wektor_dyskont)
}

wektor_r <- generuj_wektor_dyskont(r, length(CIF))

suma_dodatnie <- sum(CIF / wektor_r)
suma_ujemne <- sum(COF / wektor_r)

PI <- suma_dodatnie / suma_ujemne
PI
npv(r, CIF - COF)

# let's plot it
r_value <- seq(0, 1, by = 0.01)
plot(r_value, npv(r_value, CIF - COF), type = 'l')

wewn_stopa_zwrotu <- function(przeplywy, dokladnosc = 0.001) {
  i <- 0
  while (npv(i, przeplywy) > 0) {
    i <- i + dokladnosc
  }
  i - dokladnosc + (npv(i - dokladnosc, przeplywy) * (dokladnosc)) / (npv(r - dokladnosc, przeplywy) + abs(npv(r, przeplywy)))
}

wewn_stopa_zwrotu(przeplywy = CIF - COF)

# zadanie 2
A <- c(-10000, 5000, 4000, 3000, 1000)
B <- c(-10000, 1000, 3000, 4000, 6000)
r <- 0.08
npv(r, A)
npv(r, B)
# wybraæ projekt A
