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


