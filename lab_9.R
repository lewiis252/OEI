# ZADANIE 1
w1 <- c(1500,2500,3500)
w2 <- c(1000,2000,3000,4000)
p1 <- c(0.2,0.5,0.3)
p2 <- c(0.1,0.3,0.5,0.1)

omega_1 <- sum(w1 * p1)
omega_2 <- sum(w2 * p2)

var_1 <- sum((w1-omega_1)^2 * p1)
var_2 <- sum((w2-omega_2)^2 * p2)

N <- 3000
r <- 0.12

omega_npv <- omega_1/(1+r) + omega_2/(1+r)^2 - N
omega_npv

var_npv <- var_1/(1+r)^2 + var_2/(1+r)^4
odch_stand_npv <- sqrt(var_npv)

wsp_zmien <- odch_stand_npv/omega_npv
wsp_zmien

# uwzglêdniamy premiê za ryzyko
r <- 0.18
omega_npv <- omega_1/(1+r) + omega_2/(1+r)^2 - N
omega_npv

# zadanie 2
Ks <- 40000
c <- 400
z <- 200

ilosciowy_prog_rentownosci <- function (Ks, c, z) {
  BEP <- Ks/(c-z)
  # cat('\n Iloœciowy próg rentownoœci wynosi', BEP)
  return(BEP)
}

ilosciowy_prog_rentownosci(Ks, c, z) # function in lab_4

# cena wyrobu obni¿ona o 100, koszty zmienne wzrosn¹ o 50
ilosciowy_prog_rentownosci(Ks, c-100, z+50)

cena_minimalna <- function(z, Ks, xz) {
  cena_min <- z + Ks/xz
  # cat('\n Cena minimalna wynosi', cena_min)
  return(cena_min)
}
z <- 300
xz <- 200

cena_minimalna(z, Ks*0.8, xz)

# zadanie 3
Ks <- 5000
c <- 50
z <- 30

#a)
ilosciowy_prog_rentownosci(Ks, c, z)

# b)
ilosciowy_prog_rentownosci(Ks, c, z)*c

#zadaie 4
x <- 1500
c <- 20
Ks <- 1000
z <- 2.5

# a)
b <- Ks/(c-z)
b
# b)
# nale¿y sprzedaæ 115 egzemplarzy aby uzyskaæ zysk 1000
(1000/17.5)*2
# c)
c*0.4*x-Ks-z*x*0.4

# zadanie 5
x <- 1500
c <- 25
Ks <- 2320
z <- 10

# zysk operacyjny
x*c-Ks-z*x
