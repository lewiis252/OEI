# zadanie 10
library(FinCal)

r <- 0.12
CIF <- c(0,0,500,400,600)
COF <- c(400,900,0,0,0)

generuj_wektor_dyskont <- function (r, dlugosc_wektora){
  wektor_dyskont  <- c()
  for (t in 1:dlugosc_wektora) {
    wektor_dyskont[t]  <- (1+r)^(t-1)
  }
  return(wektor_dyskont)
}
wektor_r  <- generuj_wektor_dyskont(r, length(CIF))

suma_dodatnie <- sum(CIF/wektor_r)
suma_ujemne <- sum(COF/wektor_r)

PI  <- suma_dodatnie/suma_ujemne
PI
npv(r, CIF-COF)

# let's plot it
r_value <- seq(0,1, by=0.01)
plot(r_value, npv(r_value, CIF-COF), type='l')
