# zadanie 1
Ks <- 2400
c <- 100
z <- 40

BEP <- Ks/(c-z)
cat('\n BEP wynosi', BEP, 'tzn. produkcja jest op�acalna przy produkcji 40 krzese�.')
# BEP wynosi 40 tzn. produkcja jest op�acalna przy produkcji 40 krzese�.

# zysk operacyjny 100
Z0 <- 600
#  Aby zysk operacyjny wyni�s� 600 z� nale�y wyprodukowa� 50 krzese�.
x <- (Z0+Ks)/(c-z)
cat('\n Aby zysk operacyjny wyni�s� 600 z� nale�y wyprodukowa�', x, 'krzese�.')

# zadanie 2
Ks <- 12000
x <- 2500
z <- 6

c_min <- z + Ks/x
cat('\n Minimalna cena sprzeda�y wynosi', c_min)
#Minimalna cena sprzeda�y wynosi 10.8


# zadanie 3
c <- 1200
Ks <- 81000
x <- 1800

z_max <- c - Ks/x
cat('\n Graniczny poziom jednostkowych koszt�w zmiennych wynosi', z_max, 'z�')
# Graniczny poziom jednostkowych koszt�w zmiennych wynosi 1155 z�

# zadanie 4

c <- 80
x <- 15000
z <- 40
Ks <- 90000

BEP <- Ks/(c-z)
cat('\n BEP wynosi', BEP, 'tzn. produkcja jest op�acalna przy produkcji', BEP,'sztuk.')
# BEP wynosi 2250 tzn. produkcja jest op�acalna przy produkcji 2250 sztuk.

c_min <- z + Ks/x
cat('\n Minimalna cena sprzeda�y wynosi', 46, 'z�.')
#Minimalna cena sprzeda�y wynosi 46 z�

MSc <- (c-c_min)/c * 100
cat('\n Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi', MSc, '%.')
# Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi 42.5 %.

z_max <- c - Ks/x
cat('\n Graniczny poziom jednostkowych koszt�w zmiennych wynosi', z_max, 'z�')
# Graniczny poziom jednostkowych koszt�w zmiennych wynosi 74 z�

MSz <- (c-z_max)/z * 100
cat('\n Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi', MSz, '%.')
# Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi 15 %.

# podpunkt c), obni�amy cen� o 15 %
c <- c * 0.85

BEP <- Ks/(c-z)
cat('\n BEP wynosi', BEP, 'tzn. produkcja jest op�acalna przy produkcji', BEP,'sztuk.')
# BEP wynosi 3214.286 tzn. produkcja jest op�acalna przy produkcji 3215 sztuk.

c_min <- z + Ks/x
cat('\n Minimalna cena sprzeda�y wynosi', c_min, 'z�.')
#Minimalna cena sprzeda�y wynosi 46 z�

MSc <- (c-c_min)/c * 100
cat('\n Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi', MSc, '%.')
# Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi 32.35294 %.

z_max <- c - Ks/x
cat('\n Graniczny poziom jednostkowych koszt�w zmiennych wynosi', z_max, 'z�')
# Graniczny poziom jednostkowych koszt�w zmiennych wynosi 62 z�

MSz <- (c-z_max)/z * 100
cat('\n Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi', MSz, '%.')
# Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi 15 %.

# podpunkt d
z <- 1.18 * z

BEP <- Ks/(c-z)
cat('\n BEP wynosi', BEP, 'tzn. produkcja jest op�acalna przy produkcji', BEP,'sztuk.')
# BEP wynosi 3214.286 tzn. produkcja jest op�acalna przy produkcji 4327 sztuk.

c_min <- z + Ks/x
cat('\n Minimalna cena sprzeda�y wynosi', c_min, 'z�.')
#Minimalna cena sprzeda�y wynosi 53.2 z�

MSc <- (c-c_min)/c * 100
cat('\n Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi', MSc, '%.')
# Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi 21.76471 %.

z_max <- c - Ks/x
cat('\n Graniczny poziom jednostkowych koszt�w zmiennych wynosi', z_max, 'z�')
# Graniczny poziom jednostkowych koszt�w zmiennych wynosi 62 z�

MSz <- (c-z_max)/z * 100
cat('\n Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi', MSz, '%.')
# Margines bezpiecze�stwa inwestycji ze wzgl�du na jednostkow� cen� sprzeda�y wynosi 12.71186 %.

