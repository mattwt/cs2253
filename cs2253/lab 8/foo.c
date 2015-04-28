#include <stdio.h>

int main() {
  int sum=0, i,j,k;
  printf("enter i \n");
  (void) scanf("%d",&i);
  k = i;
  for (j=0; j < 10; ++j)
    sum += k;
  printf("your sum is %d\n",sum);
  j = 3 * sum + 4 * sum;
}
