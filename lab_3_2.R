# zadanie 2

korzysci <- c(-12500, 1000, 2000, 2500, 3000, 3500, 2000)

suma_skum <- 0
for (rok in seq(1,7)) {
  suma_skum <- suma_skum + korzysci[rok]
  if(suma_skum >= 0) {cat('Zwrot z inwestycji w roku', rok-1, suma_skum, '\n');
  break
  }
}

# zadanie 2.5
kiedy_zwrot <- function (przeplywy){
  suma_skum <- przeplywy[1]
  liczba_lat <- length(przeplywy)
  rok_zwrotu <- 0
  while (suma_skum < 0) {
      suma_skum <- suma_skum + przeplywy[rok_zwrotu+2]
      # cat('Rok', rok_zwrotu+1, 'Suma skum', suma_skum, '\n')
      rok_zwrotu <- rok_zwrotu + 1
      ulamek <- 1 - suma_skum/przeplywy[rok_zwrotu+1]

    }
  cat('Zwrot w roku', rok_zwrotu-1, 'i', ulamek*12, 'miesi¹cu')
  }

kiedy_zwrot(korzysci)
