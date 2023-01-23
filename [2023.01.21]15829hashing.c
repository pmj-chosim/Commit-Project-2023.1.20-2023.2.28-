//백준 15829 hashing 브론즈 1-2개 풀이

//1. 첫 번째 풀이
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main(void){

 int num;
 scanf("%d\n", &num);

char * list=(char *)malloc(sizeof(char)*num);
for(int i=0; i<num; i++){
	scanf("%c", &list[i]);
	list[i]=list[i]-96;
}
long long int sum=0;
for(int i=0; i<num; i++){
	sum+=((int)list[i])*pow(31,i);
}
printf("%lld", sum);
}
//2. 두번째 풀이
#include <stdio.h>
#define r 31
#define M 1234567891

int main () {
    int l, i;
    char arr[51];
    long long hash = 0, R = 1;

    scanf("%d %s", &l, arr);

    for (i = 0; i < l; i++) {
        hash += ((arr[i] - 'a' + 1) * R) % M; hash %= M;
        R *= r; R %= M;
    }
    printf("%lld", hash % M);
    return 0;
}
