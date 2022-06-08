# zadanie 1
M <- c(35000,46000,42000,32000)
N <- c(10000,0,68000,70000)

r <- 0.04

suma_1 <- 0
for(i in 1:length(M)){
  suma_1 <- suma_1 + M[i] * (1+r)^(0-i)
}
suma_1

suma_2 <- 0
for(i in 1:length(N)){
  suma_2 <- suma_2 + N[i] * (1+r)^(0-i)
}
suma_2

# b)
80000*(1+r)^4

# zadanie 2
# a)
5000*(1+0.04)^4
#lokaty s¹ równowa¿ne jeœli 5000*(1+0.04)^4=6000, wiêc u nas nie s¹
# rodzice powinni wp³aciæ
6000/((1+0.04)^4)

# b)
(6000/5000)^(1/4)-1

# zadanie 3
80000*exp(0.066*1.5)
87000*exp(0.066*0.5)
# oprocentowanie dla równowagi
log(87000/80000)

80000*exp(0.08388148*1.5)
87000*exp(0.08388148*0.5)

# zadanie 4
K <- 8000*exp(0.05*4)
# ostatnia rata
K-6000

# zadanie 5
FV1 <- 1230.4+2030.6+1264.71
FV2 <- 980.7+1050.3+1205.2+1473.89

p1 <- c(1230.4,2030.6,1264.71)
p2 <- c(980.7,1050.3,1205.2,1473.89)

suma_1 <- 0
for (i in 1:3){
  suma_1 <- suma_1 + p1[i]*(1+0.064)^(0-i)
}

suma_2 <- 0
for (i in 1:4){
  suma_2 <- suma_2 + p2[i]*(1+0.064)^(0-i)
}
suma_1
suma_2
# s¹ równowa¿ne

# zadanie 6
4500*(1+0.008)^9+4500*(1+0.008)^6+4500*(1+0.008)^3+4500
# alternatywnie móg³ otrzymaæ mniej, bo 14400 a otrzyma 18663,8, lepiej wp³acaæ do banku ratami.