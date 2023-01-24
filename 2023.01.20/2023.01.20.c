//백준 1929번 총 2개의 코드 -실버 3

//1. 합성수는 두 개 이상의 소수 곱. 이때의 소수 값은 최대합성수의 제곱근 값임을 이용
//시간 초과돼서 실패

#include <stdio.h>
#include <math.h>
int main(void){
    
    int f,l;
    scanf("%d %d",&f,&l);
    int check=0;
    for(int i=f; f<=l/2; i++){
     
            for(int j=2; j<=((int)sqrt(j))+1; j++){
                if(i%j==0){check=1; break;}
            } if(check==0)printf("%d",i);
    }

}

//2. 미리 소수 판별. 소수는 두 개 이상의 소수 곱이니까  for으로 곱 되는 경우를 찾고 배열에 체크.
#include <stdio.h>
int main(void){
    int m,n,arr[1000001] = {0,};
    arr[1] = 1;
    
    scanf("%d %d", &m, &n);
    
    for(int i = 2; i <= n; i++){ //미리 소수 판별
        for(int j = 2; i * j <= n; j++){
            arr[i*j] = 1;
        }
    }   
    for(int i = m; i <= n; i++){
        if(arr[i] == 0)
            printf("%d\n",i);
    }
    return 0;
}
