#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

#define MaxSize 10

typedef struct{
	int data[MaxSize];
	int front, rear;
}Deque;

void init_deque(Deque* dq) {
	dq->front = dq->rear=0;
}

int empty(Deque* dq) {
	return (dq->front == dq->rear);
}

int full(Deque *dq) {
	return((dq->rear + 1) % MaxSize == dq->front);
}

void add_front(Deque* dq, int item) {
	if (full(dq)) {
		printf("deque is full\n");
		exit(1);
	}

	dq->data[dq->front] = item;
	dq->front = (dq->front - 1 + MaxSize) % MaxSize;
}

void add_rear(Deque* dq, int item) {
		if (full(dq)) {
			printf("deque is full\n");
			exit(1);
		}
	
		dq->rear = (dq->rear + 1 ) % MaxSize;
		dq->data[dq->rear] = item;
}
int delet_front(Deque* dq) {
	if (empty(dq)) {
		printf("empty\n");
		exit(1);
	}
	dq->front = (dq->front + 1) % MaxSize;
	return dq->data[dq->front];
}

int get_front(Deque* dq) {

	if (empty(dq)) {
		printf("empty\n");
		exit(1);
	}
	return dq->data[(dq->front + 1) % MaxSize];
}

int get_rear(Deque* dq) {

	if (empty(dq)) {
		printf("empty\n");
		exit(1);
	}
	return dq->data[(dq->rear)];
}
int main() {
	Deque dq;
	init_deque(&dq);

	for (int i = 0; i < 10; i++) {
		if (i % 2==0) {
			add_rear(&dq, i);
			printf("add_rear(%d)\tfront=%d, rear=%d\n",
				get_rear(&dq), dq.front, dq.rear);
		}
		else {
			add_front(&dq, i);
			printf("add_front(%d)\tfront=%d, rear=%d\n",
				get_front(&dq), dq.front, dq.rear);
		}
	}


}



