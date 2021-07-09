#include <iostream>
#include <vector>
#include <map>
#include <stack>
using namespace std;
 
struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
 };
 

ListNode* mergeTwoLists(ListNode* l1, ListNode* l2) {
    if (l1 == nullptr) {
        return l2;
    } else if ((l2 == nullptr) || (l1 == nullptr && l2 == nullptr)) {
        return l1;
    }
    
    ListNode *head;
    ListNode *newList;
    
    if (l1->val <= l2->val) {
        head = l1;
        l1 = l1->next;
    } else {
        head = l2;
        l2 = l2->next;
    }
    
    newList = head;
    
    while (l1 != nullptr && l2 != nullptr) {
        if (l1->val <= l2->val) {
            newList->next = l1;
            l1 = l1->next;
        } else {
            newList->next = l2;
            l2 = l2->next;
        }
        
        newList = newList->next;
    }
    
    if (l1 == nullptr) {
        newList->next = l2;
    } else if (l2 == nullptr) {
        newList->next = l1;
    }
    
    return head;
}
