czydoskonala<-function (n){
  s <- 0;
  for(i in 1:(n-1)) {
    if(n%%i==0) {
      s <- s+i
    };
  };
  if(s==n){
    print("to liczba doskonała")
  }else {
    print("to nie jest liczba doskonała")
  }
  # print('suma dzielników wynosi:')
  # return(s)
}
# czydoskonala(1)
czydoskonala(6)
czydoskonala(4)

