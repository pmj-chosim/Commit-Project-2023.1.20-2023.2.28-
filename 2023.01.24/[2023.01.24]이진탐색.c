#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>

typedef struct bt {
	int data;
	struct bt* left;
	struct bt* right;
}BTreeNode;

BTreeNode *MakeBTreeNode(void){
	BTreeNode* nd = (BTreeNode*)malloc(sizeof(BTreeNode));
	nd->left = NULL;
	nd->right = NULL;
	return nd;
}
int GetData(BTreeNode *bt){
	return bt->data;
}
void SetData(BTreeNode *bt, int data){
	bt->data = data;
}

BTreeNode * GetLeftSubTree(BTreeNode *bt){
	return bt->left;
}
BTreeNode* GetRightSubTree(BTreeNode* bt) {
	return bt->right;
}

void MakeLeftSubTree(BTreeNode* main, BTreeNode* sub){
	if (main->left != NULL)
		free(main->left);
	main->left = sub;
}
void MakeRightSubTree(BTreeNode* main, BTreeNode* sub){
	if (main->left != NULL)
		free(main->right);
	main->right = sub;
}
//↑기본 노드 정의 및 추가

void InorderTravel(BTreeNode* bt) {
	if (bt == NULL)
		return;

	////중위 순회//
	//
	//InorderTravel(bt->left);
	//printf("%d ", bt->data);
	//InorderTravel(bt->right);

	
	//후위 순회//
	InorderTravel(bt->left);
	InorderTravel(bt->right);
	printf("%d ", bt->data);

	
	////전위 순회//
	//printf("%d ", bt->data);
	//InorderTravel(bt->left);
	//InorderTravel(bt->right);
	//
}


int main(void) {
	BTreeNode* bt1 = MakeBTreeNode();
	BTreeNode* bt2 = MakeBTreeNode();
	BTreeNode* bt3 = MakeBTreeNode();
	BTreeNode* bt4 = MakeBTreeNode();
	BTreeNode* bt5 = MakeBTreeNode();

	SetData(bt1, 1);
	SetData(bt2, 2);
	SetData(bt3, 3);
	SetData(bt4, 4);
	SetData(bt5, 5);

	MakeLeftSubTree(bt1, bt2);
	MakeRightSubTree(bt1, bt3);
	MakeLeftSubTree(bt2, bt4);
	MakeRightSubTree(bt2, bt5);
	/*
	            1
			2		3
		  4   5
	*/

	printf("%d \n", GetData(GetLeftSubTree(bt1)));

	printf("%d \n", GetData(GetRightSubTree(bt1)));
	printf("%d \n\n", GetData(GetLeftSubTree(bt2)));

	InorderTravel(bt1);

	return 0;
}

