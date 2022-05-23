generuj_wektor_dyskont <- function (r, dlugosc_wektora){
  wektor_dyskont  <- c()
  for (t in 1:dlugosc_wektora) {
    wektor_dyskont[t]  <- (1+r)^(t-1)
  }
  return(wektor_dyskont)
}

okreszwr<-function(x){
  s<-x[1];
  i<-2
  while (s<0) {
    s<-s+x[i];
    i<-i+1
  }
  m<-abs(s-x[i-1])/x[i-1]*12
  if (m==12)
    i<-i+1
  if (m==12)
    m<-0
  cat(i-3,"lat i",m,"miesiecy")
}

okreszwr2<-function(x){
  s<-x[1];
  i<-2
  while (s<0) {
    s<-s+x[i];
    i<-i+1
  }
  m<-abs(s-x[i-1])/x[i-1]*12
  if (m==12)
    i<-i+1
  if (m==12)
    m<-0
  return((i-3)*12+m)
}

wewn_stopa_zwrotu <- function (przeplywy, dokladnosc=0.001) {
  i <- 0
  while (npv(i, przeplywy) > 0) {
  i <- i+dokladnosc
}
  i-dokladnosc+(npv(i-dokladnosc, przeplywy)*(dokladnosc))/(npv(r-dokladnosc,przeplywy)+abs(npv(r, przeplywy)))
}

ilosciowy_prog_rentownosci <- function (Ks, c, z) {
  BEP <- Ks/(c-z)
  # cat('\n Iloœciowy próg rentownoœci wynosi', BEP)
  return(BEP)
}

cena_minimalna <- function(z, Ks, xz) {
  cena_min <- z + Ks/xz
  # cat('\n Cena minimalna wynosi', cena_min)
  return(cena_min)
}

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

NPV <- function (r, przeplywy){
  suma <- 0
  t <- 0
  for (kwota in przeplywy){
    suma <- suma + kwota/((1+r)^t)
    t <- t + 1
  }
  suma
}