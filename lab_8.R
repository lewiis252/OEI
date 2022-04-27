library(FinCal)

# zadanie 1
przeplywy <- c(-33000,-50000,-5350,17550,22400,32700,35000,11400,21400,21400,56400)

r <- 0.01
z <- npv(r, przeplywy)

while(z>0){
  z <- npv(r, przeplywy)
  r <- r+0.01
}
cat('Ostatnie dodatnie r to', r-0.01)