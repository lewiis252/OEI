# zadanie 1
npv <- function (r, przeplywy){
  suma <- 0
  t <- 0
  for (kwota in przeplywy){
    suma <- suma + kwota/((1+r)^t)
    t <- t + 1
  }
  suma
}

c <- c(-5000, 2800, 3600)
npv(0.15, c)

for (i in seq(0.1, 0.2, 0.001)) {
  if (npv(i, c) < 0) {
    print(i-0.001)
    break
  }
}

i <- 0.1
while (npv(i, c) > 0) {
  i <- i+0.001
}
cat(i-0.001)
npv(0.173, c)
r <- i-0.001
w <- 0.173+(npv(r-0.001, c)*(0.174-0.173))/(npv(r-0.001,c)+abs(npv(r, c)))
w

arc <- seq(0,0.5, by=0.01)
yc <- npv(arc, c)
plot(arc, yc, type='l')
zero <- arc*0
lines(arc, zero)

# zadanie 2

wewn_stopa_zwrotu <- function (przeplywy, dokladnosc=0.001) {
  i <- 0
  while (npv(i, przeplywy) > 0) {
  i <- i+dokladnosc
}
  i-dokladnosc+(npv(i-dokladnosc, przeplywy)*(dokladnosc))/(npv(r-dokladnosc,przeplywy)+abs(npv(r, przeplywy)))
}

wewn_stopa_zwrotu(c, 0.00001)

# zadanie 3

projektA <- c(-500,100,200,400,300,300)
projektB <- c(-900,0,300,400,300,700)
projektC <- c(-1000, 200, 800, 100, -600, -700)
projektD <- c(-1000, 300, 400, 500, 600, 700)

wewn_stopa_zwrotu(projektA)
wewn_stopa_zwrotu(projektB)
wewn_stopa_zwrotu(projektC)
wewn_stopa_zwrotu(projektD)

r <- 0.2
s1 <- 0
s2 <- 0
for (i in 1:length(projektA)){
  if(projektA[i] > 0){
    s1 <- s1 + projektA[i]/(1+r)^i
  }
}

for (i in 1:length(projektA)){
  if(projektA[i] < 0){
    s2 <- s2 + projektA[i]/(1+r)^i
  }
}
s1
s2
abs(s1/s2)

PI <- function(c, r=0.1){
  s1 <- 0
  s2 <- 0
  for (i in 1:length(c)) {
    if (c[i] > 0) {
      s1 <- s1 + c[i] / (1 + r)^i
    }
  }

  for (i in 1:length(c)) {
    if (c[i] < 0) {
      s2 <- s2 + c[i] / (1 + r)^i
    }
  }
  abs(s1/s2)
}
PI(projektA, 0.2)
PI(projektB, 0.2)
PI(projektC, 0.2)
PI(projektD, 0.2)
