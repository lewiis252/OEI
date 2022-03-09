
ocena<-3
ocena^2
ocena<-3
wektor <-c(1,2,3,4,5)
wektor
wektor^2
wektor2 <-c(5,4,3,2,1)
wektor+wektor2

sin(pi)

square<-function(x){
  x^2
}
square(5)

ilocz_skal<-function(v1, v2){
  print('iloczyn skalarny')
  sum(v1*v2)
  cat('Iloczyn skalarny wektorów ', sum(v1*v2))
}

ilocz_skal(wektor, wektor2)

czyProstopadle <- function(v1, v2){
  if (sum(v1*v2)==0) cat ('Prostopad³e') else cat('Nie s¹ prostopad³e')
}

czyProstopadle(wektor, wektor2)

silnia<-function(n){
  t<-1
  for (i in 1:n) {
    t<-i*t
  }
  return(t)
}

silnia(5)

czydoskonala<-function (n){
  s <- 0
  for(i in 1:(n-1)) {
    if(n%%i==0) {
      s <- s+i
    }
  }
  if(s==n){
    print("to liczba doskona³a")
  }else {
    print("to nie jest liczba doskona³a")
  }
  # print('suma dzielników wynosi:')
  # return(s)
}
# czydoskonala(1)
czydoskonala(6)
czydoskonala(4)
