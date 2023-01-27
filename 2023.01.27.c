//11718 백준 그대로 출력하기-새싹 문자열
#include <stdio.h>
int main(void){
    
    char a;
    while(scanf("%c", &a)!=-1){
        printf("%c", a);
    }
    return 0;
}
//scanf는 버퍼쌓다가 enter 누르면 실행돼서 getc처럼 바로 출력 안 됨.

//9086 python
//x = int(input())

//for i in range(x):
 //   a = str(input())
  //  print(a[0]+a[-1])