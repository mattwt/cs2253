//#include<stdio.h>

#define ZERO 0

#define TWICE(x)  2*(x)
#define ZILCH(x)  (x)-(x)

int fact(int);  /* prototype */

int main() {
  int four = TWICE(1+1);
  int fn = fact(four);

  printf("TWICE of 1+1 should be 4 and is %d\n", TWICE(1+1));
  printf("ZILCH of 2 should be 0 and is %d\n", ZILCH(2));
  printf("ZILCH of 1+1 should be 0 and is %d\n", ZILCH(1+1));

  printf("fact(%d) is %d \n",four, fn);
}

int fact( int n) {
  int temp;
  if (n==0) return 1;
  else {
     temp = n*fact(n-1);
     return temp;
  }
}
