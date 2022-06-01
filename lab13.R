# zadanie 1
inflacja <- c(0.021, 0.018, 0.022)

iloczyn <- 1
for (stopa_mies in inflacja) {
  iloczyn <- iloczyn * (1 + stopa_mies)
}
stopa_inflacji_w_kwartale <- iloczyn - 1

przecietna_inflacja_mies <- (iloczyn)^(1 / length(inflacja)) - 1
przecietna_inflacja_mies_alternatywnie <- (1 + stopa_inflacji_w_kwartale)^(1 / length(inflacja)) - 1


stopa_inflacji_w_okresie <- function(wektor_inflacji) {
  iloczyn <- 1
  for (stopa_mies in wektor_inflacji) {
    iloczyn <- iloczyn * (1 + stopa_mies)
  }
  iloczyn - 1
}

przecietna_inflacja_w_okresie <- function(wektor_inflacji) {
  iloczyn <- 1
  for (stopa_mies in wektor_inflacji) {
    iloczyn <- iloczyn * (1 + stopa_mies)
  }
  (iloczyn)^(1 / length(wektor_inflacji)) - 1
}

stopa_inflacji_w_okresie(inflacja)
# kwartalnastopa inflacji to 0.06224432
przecietna_inflacja_w_okresie(inflacja)
# przeciêtna miesiêczna inflacja to 0.02033192


# zadanie 2
# a)
pozyczka <- 20000
do_oddania <- 24000
i_inf <- 0.04
lata <- 2
i_nom <- ((do_oddania)/pozyczka)^(1/lata)-1

i_real <- (i_nom-i_inf)/(1+i_inf)

# realna roczna stopa oprocentowania wynosi 0.05331261

# b)
inflacja <- c(0.046, 0.048)

przecietna_inflacja_roczna <- przecietna_inflacja_w_okresie(inflacja)

i_real <- (i_nom - przecietna_inflacja_roczna)/(1+przecietna_inflacja_roczna)
# stopa realna wynosi 0.04627088

# zadanie 3

# a)
pozyczka <- 15000
do_oddania <- 18500
i_inf <- 0.028
lata <- 3
i_nom <- ((do_oddania)/pozyczka)^(1/lata)-1

i_real <- (i_nom-i_inf)/(1+i_inf)
i_real

# b)
inflacja <- c(0.028, 0.032, 0.034)
i_inf <- przecietna_inflacja_w_okresie(inflacja)
i_real <- (i_nom-i_inf)/(1+i_inf)
# realna stopa oprocentowania po¿yczki wynosi 0.06216709

# c)
inflacja <- c(0.028, 0.033, 0.033)
i_inf <- przecietna_inflacja_w_okresie(inflacja)
i_real <- (i_nom-i_inf)/(1+i_inf)
# realna stopa oprocentowania po¿yczki wynosi 0.06216675

# zadanie 4
depozyt <- 5000
oprocentowanie <- 0.026
i_inf <- 0.02

odsetki_nominalne  <- depozyt*oprocentowanie
wartosc_lokaty_nominalna <- depozyt*(1+oprocentowanie)

oprocentowanie_realne  <- (oprocentowanie-i_inf)/(1+i_inf)
odsetki_realne  <- depozyt*oprocentowanie_realne
wartosc_lokaty_realna <- depozyt*(1+oprocentowanie_realne)

# zadanie 5
zarobki_1 <- 2800
zarobki_2 <- 3500
i_inf <- 0.064

# a)
wzrost  <- 200
wzrost_real <- wzrost/(1+i_inf)

wzrost_real_1_proc <- (zarobki_1+wzrost_real)/zarobki_1 - 1
wzrost_real_2_proc <- (zarobki_2+wzrost_real)/zarobki_2 - 1

# b)
zarobki_1_real <- zarobki_1/(1+i_inf)
zarobki_2_real <- zarobki_2/(1+i_inf)

# zadanie 6
depozyt <- 2300
oprocentowanie <- 0.028
# a)
i_inf <- 0.02

oprocentowanie_realne <- (oprocentowanie-i_inf)/(1+i_inf)
wart_A_nominalna <- depozyt*(1+oprocentowanie)
wart_A_nominalna
wart_B_nominalna <- depozyt
wart_B_nominalna

wart_A_realna <- depozyt*(1+oprocentowanie_realne)
wart_A_realna
wart_B_realna <- depozyt/(1+i_inf)
wart_B_realna
# b)
i_inf <- -0.02
oprocentowanie_realne <- (oprocentowanie-i_inf)/(1+i_inf)
wart_A_nominalna <- depozyt*(1+oprocentowanie)
wart_A_nominalna
wart_B_nominalna <- depozyt
wart_B_nominalna

wart_A_realna <- depozyt*(1+oprocentowanie_realne)
wart_A_realna
wart_B_realna <- depozyt/(1+i_inf)
wart_B_realna

