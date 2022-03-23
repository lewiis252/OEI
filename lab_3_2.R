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
  cat('\n Zwrot w roku', rok_zwrotu-1, 'i', ceiling(ulamek*12), 'miesi¹cu \n')
  }

kiedy_zwrot(korzysci)

# zadanie 3

koszt_eksploatacji_A <- 2500
koszt_eksploatacji_B <- 3000
rok <- 0
while (koszt_eksploatacji_A < koszt_eksploatacji_B) {
  koszt_eksploatacji_A <- koszt_eksploatacji_A + 300
  koszt_eksploatacji_B <- koszt_eksploatacji_B + 200
  rok <- rok + 1
}
cat('\n', rok, '\n')

# sposob 2
z <- c(-500, rep(100,50))

kiedy_zwrot(z)

# zadanie 4
kiedy_zwrot(c(-10000,2000,7000,4000))

# zadanie 5

nakladyA <- c(-10000,2700,3500,4300,5200,6300)
nakladyB <- c(-10000,rep(4000,4))
nakladyC <- c(-10000,7200,5500,3100,2500,700)

kiedy_zwrot(nakladyA)
kiedy_zwrot(nakladyB)
kiedy_zwrot(nakladyC)

kiedy_zwrot2 <- function (przeplywy){
  suma_skum <- przeplywy[1]
  liczba_lat <- length(przeplywy)
  rok_zwrotu <- 0
  while (suma_skum < 0) {
      suma_skum <- suma_skum + przeplywy[rok_zwrotu+2]
      # cat('Rok', rok_zwrotu+1, 'Suma skum', suma_skum, '\n')
      rok_zwrotu <- rok_zwrotu + 1
      ulamek <- 1 - suma_skum/przeplywy[rok_zwrotu+1]


    }
  miesiace <- (rok_zwrotu-1)*12+ulamek*12
  return(miesiace)
  }

porownywarka_zwrotow <- function (lista) {
  best <- kiedy_zwrot(lista[1])
  best_index <- 1
  for (l in 2:length(lista)) {
    if(kiedy_zwrot(lista[l]) < best) {
      best <- kiedy_zwrot2(lista[l])
      best_index <- l
    }
  }
  cat('\n Najlepsza inwestycja to ', best_index)
}

# popraw
# porownywarka_zwrotow(c(nakladyA, nakladyB))
