#include <iostream>
#include <vector>
#include <map>
#include <stack>
using namespace std;

class MyQueue {
public:
    
    stack<int> first;
    stack<int> second;
    
    /** Initialize your data structure here. */
    MyQueue() {
        
    }
    
    /** Push element x to the back of queue. */
    void push(int x) {
        first.push(x);
    }
    
    /** Removes the element from in front of queue and returns that element. */
    int pop() {
        //cout << first.size();
        int firstSize = first.size();
        int currSize = 0;
        while (!first.empty()) {
            currSize += 1;
            if (currSize == firstSize) {
                break;
            }
            second.push(first.top());
            first.pop();
        }
        int peekVal = first.top();
        first.pop();
        while (!second.empty()) {
            first.push(second.top());
            second.pop();
        }
        return  peekVal;
    }
    
    /** Get the front element. */
    int peek() {
        int firstSize = first.size();
        int currSize = 0;
        while (!first.empty()) {
            currSize += 1;
            if (currSize == firstSize) {
                break;
            }
            second.push(first.top());
            first.pop();
        }
        int peekVal = first.top();
        while (!second.empty()) {
            first.push(second.top());
            second.pop();
        }
        return  peekVal;
    }
    
    /** Returns whether the queue is empty. */
    bool empty() {
        return first.empty();
    }
};

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue* obj = new MyQueue();
 * obj->push(x);
 * int param_2 = obj->pop();
 * int param_3 = obj->peek();
 * bool param_4 = obj->empty();
 */
