# zadanie 1
n <- 2
kwota_pocz <- 5
kwota_konc <- 10

for (oproc in seq(0.1, 1, 0.05)) {
  if (kwota_pocz+n*kwota_pocz*oproc == kwota_konc){
    cat('Szukane oprocentowanie to ', oproc*100, '%')
  }
}

# zadanie 2
n <- 10
kwota_pocz <- 10
for (oproc in seq(0.1, 1, 0.05)) {
  if (kwota_pocz+n*kwota_pocz*oproc == 7*kwota_pocz){
    cat('Szukane oprocentowanie to ', oproc*100, '%')
  }
}

# zadanie 3

