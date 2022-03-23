k<-c(-12500,1230,2090,2590,3800,3700,2000)
s<-0
for (i in 1:length(k)) {
  s<-s+k[i];
  cat(s,"-",i-1,sep="\n")
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
okreszwr(k)

# zadanie 3

z <- c(-500, rep(100,50))
okreszwr(z)

# zadanie 4
okreszwr(c(-10000,2000,7000,4000))

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

ocena <- function (x,y) {
  if (okreszwr2(x) < okreszwr2(y)) {
    cat('Pierwszy projekt lepszy')
  }
  else cat('Drugi projekt lepszy')
}
nakladyA <- c(-10000,2700,3500,4300,5200,6300)
nakladyB <- c(-10000,rep(4000,4))
ocena(nakladyA, nakladyB)