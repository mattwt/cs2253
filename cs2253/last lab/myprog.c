
#include <stdio.h>

int fact(int); 

int main() {
   printf("fact(5) is %d \n", fact(5));
}

int fact( int n) {
  int temp;
  if (n==0) return 1;
  else {
     temp = n*fact(n-1);
     return temp;
  }
}
