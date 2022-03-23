# zadanie 1

# wzór na BEP z wykladu
ilosciowy_prog_rentownosci <- function (Ks, c, z) {
  BEP <- Ks/(c-z)
  # cat('\n Iloœciowy próg rentownoœci wynosi', BEP)
  return(BEP)
}
# a)
ilosciowy_prog_rentownosci(40000,400,200)
# b)
ilosciowy_prog_rentownosci(40000, 300, 250)
# c)
cena_minimalna <- function(z, Ks, xz) {
  cena_min <- z + Ks/xz
  # cat('\n Cena minimalna wynosi', cena_min)
  return(cena_min)
}
cena_minimalna(300,0.8*40000,200)

# zadanie 2
ilosciowy_prog_rentownosci(5000,50,30)
bep_prim <- ilosciowy_prog_rentownosci(5000,50,30) * 50
bep_prim

# zadanie 3
Ks <- 2320
z <- 10
c <- 25
xm <- 1500

Z <- (c-z)*xm - Ks
Z