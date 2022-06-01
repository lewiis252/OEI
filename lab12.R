# zadanie 1
inflacja <- c(0.012, 0.016, 0.018)

iloczyn <- 1
for (stopa_mies in inflacja) {
  iloczyn <- iloczyn * (1 + stopa_mies)
}
stopa_inflacji_w_kwartale <- iloczyn - 1

przecietna_inflacja_mies <- (iloczyn)^(1 / length(inflacja)) - 1
przecietna_inflacja_mies_alternatywnie <- (1 + stopa_inflacji_w_kwartale)^(1 / length(inflacja)) - 1
przecietna_inflacja_mies_alternatywnie2 <- mean(inflacja)

stopa_inflacji_w_okresie <- function(wektor_inflacji) {
  iloczyn <- 1
  for (stopa_mies in wektor_inflacji) {
    iloczyn <- iloczyn * (1 + stopa_mies)
  }
  iloczyn - 1
}

przecietna_inflacja_mies <- function(wektor_inflacji) {
  iloczyn <- 1
  for (stopa_mies in wektor_inflacji) {
    iloczyn <- iloczyn * (1 + stopa_mies)
  }
  (iloczyn)^(1 / length(wektor_inflacji)) - 1
}

stopa_inflacji_w_okresie(inflacja)
przecietna_inflacja_mies(inflacja)

inflacja_w_roku_2021 <- c(0.026, 0.024, 0.032, 0.043, 0.047, 0.044, 0.05, 0.055, 0.059, 0.068, 0.078, 0.086)

stopa_inflacji_w_okresie(inflacja_w_roku_2021)
przecietna_inflacja_mies(inflacja_w_roku_2021)

# zadanie 2
# a)
stopa_inflacji <- 0.04
wzrost_srodkow <- 0.12
i_real <- (wzrost_srodkow - stopa_inflacji) / (1 + stopa_inflacji)
# b)
i_real <- 0.1
wzrost_srodkow_dla_10_procent <- i_real * (1 + stopa_inflacji) + stopa_inflacji

znajdz_nominalny_wzrost <- function (zadane_i_real, stopa_inflacji, wzrost_srodkow, dokladnosc=0.00001) {
  i_real <- (wzrost_srodkow - stopa_inflacji) / (1 + stopa_inflacji)
  while(i_real < zadane_i_real) {
    wzrost_srodkow <- wzrost_srodkow + dokladnosc
    i_real <- (wzrost_srodkow - stopa_inflacji) / (1 + stopa_inflacji)
      }
  wzrost_srodkow
}

znajdz_nominalny_wzrost(0.1, stopa_inflacji, wzrost_srodkow)

# zadanie 3
pozyczka <- 12000
odsetki <- 2000
i_inf <- 0.03
i_nom <- ((pozyczka+odsetki)/pozyczka)^(1/2)-1

i_real <- (i_nom-i_inf)/(1+i_inf)