//김** 교수님의 자구 증원 신청을 쳐보고 싶은 마음에 링크드리스트 복습해봄
#include <stdio.h>
#include <stdlib.h>

// 연결 리스트의 노드 구조체
typedef struct Node {
    int data;
    struct Node* next;
} Node;

// 연결 리스트의 머리(head)와 꼬리(tail)를 가리키는 전역 변수
Node* head = NULL;
Node* tail = NULL;

// 노드를 생성하는 함수
Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

// 노드를 연결하는 함수
void addNode(int data) {
    Node* newNode = createNode(data);
    if (head == NULL) {
        head = tail = newNode;
    }
    else {
        tail->next = newNode;
        tail = newNode;
    }
}

// 노드를 삭제하는 함수
void removeNode(int data) {
    Node* currNode = head;
    Node* prevNode = NULL;
    while (currNode != NULL) {
        if (currNode->data == data) {
            if (currNode == head) {
                head = currNode->next;
            }
            else if (currNode == tail) {
                tail = prevNode;
                tail->next = NULL;
            }
            else {
                prevNode->next = currNode->next;
            }
            free(currNode);
            return;
        }
        prevNode = currNode;
        currNode = currNode->next;
    }
}

// 노드를 탐색하는 함수
Node* searchNode(int data) {
    Node* currNode = head;
    while (currNode != NULL) {
        if (currNode->data == data) {
            return currNode;
        }
        currNode = currNode->next;
    }
    return NULL;
}

// 노드의 개수를 반환하는 함수
int countNodes() {
    int count = 0;
    Node* currNode = head;
    while (currNode != NULL) {
        count++;
        currNode = currNode->next;
    }
    return count;
}

// 연결 리스트를 출력하는 함수
void printList() {
    Node* currNode = head;
    printf("List: ");
    while (currNode != NULL) {
        printf("%d ", currNode->data);
        currNode = currNode->next;
    }
    printf("\n");
}

int main() {
    // 노드 추가
    addNode(1);
    addNode(2);
    addNode(3);
    addNode(4);
    addNode(5);

    // 연결 리스트 출력
    printList();

    // 노드 삭제
    removeNode(3);

    // 연결 리스트 출력
    printList();

    // 노드 탐색
    Node* searchedNode = searchNode(2);
    if (searchedNode != NULL) {
        printf("Searched node: %d\n", searchedNode->data);
    }
    else {
        printf("Node not found\n");
    }

    // 노드 개수 출력
    printf("Number of nodes: %d\n", countNodes());

    return 0;
}