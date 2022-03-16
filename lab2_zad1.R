# zadanie 1
temp <- c(19, 24, 27, 27, 28, 29, 28, 29, 26, 19,
22, 25, 23, 25, 28, 26)

srednia <- sum(temp)/length(temp)
print(mean(temp))
print(srednia)

wariancja <- (sum((temp-srednia)^2))/length(temp)
print(wariancja)
print(var(temp))

odch_stand <- sqrt(wariancja)
print(odch_stand)
print(sd(temp))

# mediana
temp_sorted <- sort(temp)
mediana <- (temp_sorted[8] + temp_sorted[9])/2
print(mediana)
print(median(temp))

# dominanta
table(temp) # szereg czêstoœci

# zadanie 2
wizyty <- c(0,1,2,3,4,5)
liczba_studentow <- c(16,27,25,21,7,4)

# srednia
srednia <- sum(wizyty*liczba_studentow)/sum(liczba_studentow)
print(srednia)

# wariancja
wariancja <- sum(((wizyty-srednia)^2)*liczba_studentow)/sum(liczba_studentow)
print(wariancja)

# mediana
sum(liczba_studentow)
suma_skum <- 0
for(i in 1:length(liczba_studentow)) {
  suma_skum <- suma_skum + liczba_studentow[i];
  cat(i-1, "-", suma_skum, " ")
}

# dominanta
max(liczba_studentow)
match(wizyty, (which(liczba_studentow == max(liczba_studentow))))


# zadanie 2
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