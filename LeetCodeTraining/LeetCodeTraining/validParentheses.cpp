#include <iostream>
#include <vector>
#include <map>
#include <stack>
using namespace std;

bool isValid(string s) {
    stack<char> _stack;
    for (int i = 0; i < s.length(); i++) {
        if (s[i] == '(' || s[i] == '['|| s[i] == '{') {
            _stack.push(s[i]);
        }
        else {
            if (s[i] == ']' && (_stack.empty() || _stack.top() != '[' )) {
                return false;
            }
            else if (s[i] == ')' && (_stack.empty() || _stack.top() != '(' )){
                return false;
            }
            else if (s[i] == '}' && (_stack.empty() || _stack.top() != '{' )){
                return false;
            }
            else {
                _stack.pop();
            }
        }
    }
    if (!_stack.empty()) {
        return false;
    }
    return true;
}
