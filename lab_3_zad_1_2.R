# zad 1.2
P0 <- 5000
Pk <- 5375
n <- 15/12
# Pk = P0*(1+rn)
r <- (Pk/P0-1)/n
cat(r)

# zadanie 1.3
P0 <- 3600
cat(W, '\n')
# 1)
n <- 3
r <- 0.044
W <- P0 * (1+r*n)
cat(W, '\n')

# 2)
r <- 0.044
n <- 154/360
W <- P0 * (1+r*n)
cat(W, '\n')

# 3)
n <- 3
r <- 0.044
W <- P0 * (1+r)^n
cat(W, '\n')

# zadanie 1.4
K <- 8000
W <- 10000
r <- 0.082

# z pêtli
for (n in seq(1, 100)) {
  if (K*(1+r)^n >= W){
    cat('Szukane lata to ', n)
    break
  }
}

# ze wzoru
cat((log(W/K)) / log(1+r))

# zadanie 1.5
n <- 4
m <- 4
r <- 0.022
K0 <- 4500

K0 * (1 + r) ^ (n * m)
K0 * (1 + r) ^ (n * m) - K0

# zad 1.8
kapitalizacja <- function (x){
  10000 * (1 + 0.12/x)^x
}
kapitalizacja(1)
kapitalizacja(2)
kapitalizacja(4)
kapitalizacja(6)
kapitalizacja(12)