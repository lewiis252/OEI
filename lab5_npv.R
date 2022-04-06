# strony 28 41 49
library(FinCal)
library(hash)

my_NPV <- function (r, przeplywy){
  suma <- 0
  for (t in seq_along(przeplywy)) {
    suma <- suma + przeplywy[t] / ((1+r)^(t-1))
  }
  suma
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

calculate_r <- function (uw=1, kw=0.2, ud=0, i=0, ip=0.1){
  r <- uw * kw + ud * i * (1-ip)
  return(r)
}

# zadanie 1
przeplywy <- c(-20000, -20000, 9500, 12000, 12500, 12300, 11400, 17700)
r <- calculate_r(0.4,0.12,0.6,0.19,0.1)

npv(r, przeplywy)
my_NPV(r, przeplywy)
NPV(r, przeplywy)

# zadanie 2
r <- calculate_r(uw=1, kw=0.19, ud=0,i=0, ip=0.1)

przeplywyA <- c(-5000,1000,2000,4000,3000,2000,1000,1500)
przeplywyB <- c(-9000,0,3000,4000,3500,4200,3800,1200)

arg <- seq(0,0.5,by=0.01)

y <- npv(arg, przeplywyA) # !!!u was y <- npv(przeplywyA, arg)!!!
y2 <- npv(arg, przeplywyB)

NPV(r, przeplywyA)
NPV(r, przeplywyB)

plot(arg, y, type='l')
lines(arg, y2)
zero <- arg*0
lines(arg, zero)

x <- cbind(y,y2, zero)
x
matplot(arg, x, type = 'l')

# zadanie 3
przeplywy <- c(-6000, 1000, 1200, 2000, 1800)
r <- calculate_r(kw=0.2)

NPV(r, przeplywy)
npv(0.2, przeplywy)

# zadanie 4
przeplywy <- c(-1000,90,220,220,500,700)
r <- calculate_r(uw=1, kw=0.19)
npv(r, przeplywy)
NPV(r, przeplywy)

# zadanie 5
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
  cat('\n Zwrot w roku', rok_zwrotu-1, 'i', ceiling(ulamek*12), 'miesiacu \n')
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
  cat(i-3,"lat i",m,"miesiecy \n")
}

projektA <- c(-500,100,200,400,300,300)
projektB <- c(-900,0,300,400,300,700)
projektC <- c(-1000, 200, 800, 100, -600, -700)
projektD <- c(-1000, 300, 400, 500, 600, 700)
v <- c(projektA, projektB, projektC, projektD)

# for (i in v){
#   okreszwr(i)
# }

okreszwr(projektA)
okreszwr(projektB)
okreszwr(projektC)
okreszwr(projektD)

r <- 0.2
npv(r, projektA)
npv(r, projektB)
npv(r, projektC)
npv(r, projektD)
arg <- seq(0,1, by=0.01)
plot(arg, npv(arg, projektC), type='l')

# zadanie 14
r <- 0.1
g <- c(-1,3.6,-4.31,1.716)
npv(r, g)

arg <- seq(0,0.5,by=0.01)
plot(arg, npv(arg, g), type='l')
lines(arg, arg*0)

# zadanie 16
r <- 0.12
przeplywy1 <- c(1500,2500,3500)
prawdop1 <- c(0.2,0.5,0.3)
przeplywy2 <- c(1000,2000,3000,4000)
prawdop2 <- c(0.1,0.3, 0.5, 0.1)

s1 <- sum(przeplywy1*prawdop1)
s2 <- sum(przeplywy2*prawdop2)

omega_npv <- -3000 + s1/(1+r) + s2/((1+r)^2)
omega_npv
# wariancja
