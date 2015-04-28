#include <stdio.h>

int n;

void hack() {
  int i;

  int myarray[2];
  for (i=0; i < n; ++i)
    myarray[i] = i;
}

int main() {

  printf("please enter n: "); fflush(stdout);
  scanf("%d",&n);  
  hack();
  printf("survived");
}
