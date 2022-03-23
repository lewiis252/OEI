ocena<-3
ocena^2
3+3
6*7
wektor<-c(1,2,3,4,5)
wektor^2
wektor2<-c(5,4,3,2,1)
wektor*wektor2
sin(pi)
pi




kwadratowa<-function(x)
{
  x^2
  
}
kwadratowa(2)
iloczynSkalarny<-function(x,y)
{
  print("Iloczyn skalarny wektorów:");
 sum(x*y);
  cat("Iloczyn skalarny wektorów:", sum(x*y))
  
}
iloczynSkalarny(wektor,wektor2)
czyProstopadle<-function(x,y)
{
  if (sum(x*y)==0) cat("Prostopad³e") else cat("Nie Prostopad³e")
  
  
}
czyProstopadle(wektor,wektor2)
silnia<-function(n)
{
 s<-1;
 for (i in 1:n) {
   s<-s*i
   
 };
return(s)  
}
silnia(5)
doskonala<-function(x)
{
s<-0;
 for (i in 1:(x-1)) {
   if (x%%i==0) s<-s+i
 }
return(s)
}
doskonala(6)
doskonala(8)
