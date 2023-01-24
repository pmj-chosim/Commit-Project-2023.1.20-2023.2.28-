#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#define HEAP_LEN 100

typedef struct _he {
	int pr;
	char data;
}HeapElem;

typedef struct _heap {
	int numOfData;
	HeapElem heapArr[HEAP_LEN];
}Heap;

void HeapInit(Heap *ph){
	ph->numOfData = 0;
}
int HIsEmpty(Heap *ph){
	if (ph->numOfData == 0)
		return 1;
	else
		return 0;
}



//인덱스 반환 ↓
int GetParentIDX(int idx) {
	return idx / 2;
}
int GetLChildIDX(int idx) {
	return idx * 2;
}
int GetRChildIDX(int idx) {
	return GetLChildIDX(idx) + 1;
}
int GetHipriChildIDX(Heap* ph, int idx) {
	if (GetLChildIDX(idx) > ph->numOfData)
		return 0;
	else if (GetLChildIDX == ph->numOfData)
		return GetLChildIDX(idx);
	else {
		if (ph->heapArr[GetLChildIDX(idx)].pr > ph->heapArr[GetRChildIDX(idx)].pr)
			return GetRChildIDX(idx);
		else
			return GetLChildIDX(idx);

	}
}
//

void HInsert(Heap* ph, int data, char pr){
	int idx = ph->numOfData + 1;
	HeapElem nelem = { pr, data };
	while (idx != 1) {
		if (pr < (ph->heapArr[GetParentIDX(idx)].pr)) {
			ph->heapArr[idx] = ph->heapArr[GetParentIDX(idx)];
			idx = GetParentIDX(idx);
		}
		else
			break;
	}

}
int HDelete(Heap *ph){
	int retData = (ph->heapArr[1]).data;
	HeapElem lastElem = ph->heapArr[ph->numOfData];

	int parentIdx = 1;
	int childIdx;

	while (childIdx = GetHipriChildIDX(ph, parentIdx)) {
		if (lastElem.pr <= ph->heapArr[childIdx].pr)
			break;
		ph->heapArr[parentIdx] = ph->heapArr[childIdx];
		parentIdx = childIdx;
	}
	ph->heapArr[parentIdx] = lastElem;
	ph->numOfData -= 1;
	return retData;
}
// 힙 자료형 구현 및 설정 함수


int main(){
	Heap heap;
	HeapInit(&heap);

	HInsert(&heap, 'A', 1);
	HInsert(&heap, 'B', 2);
	HInsert(&heap, 'C', 3);
	printf("%c \n", HDelete(&heap));

	HInsert(&heap, 'A', 1);
	HInsert(&heap, 'B', 2);
	HInsert(&heap, 'C', 3);
	printf("%c \n", HDelete(&heap));

	while (!HIsEmpty(&heap))
		printf("%c \n", HDelete(&heap));

}