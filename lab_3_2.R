# zadanie 1

korzysci <- c(-12500, 1000, 2000, 2500, 3000, 3500, 2000)

suma_skum <- 0
for (rok in seq(1,7)) {
  suma_skum <- suma_skum + korzysci[rok]
  if(suma_skum >= 0) {cat('Zwrot z inwestycji w roku', rok-1, suma_skum);
  break
  }
}

# zadanie 2
kiedy_zwrot <- function (przeplywy){
  suma_skum <- przeplywy[1]
  liczba_lat <- length(przeplywy)
  rok_zwrotu <- 0
  while (suma_skum < 0) {
      suma_skum <- suma_skum + przeplywy[liczba_lat]
      rok_zwrotu <- rok_zwrotu + 1
    }
  cat('rok', rok_zwrotu-1, 'kwota', suma_skum)
  }

kiedy_zwrot(korzysci)
