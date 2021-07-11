#include <iostream>
#include <vector>
#include <map>
#include <stack>
#include <queue>
using namespace std;


int strStr(string haystack, string needle) {
    if (needle == "")  {
        return 0;
    }
    if (needle.size() > haystack.size()) {
        return -1;
    }
    if (needle == haystack) {
        return 0;
    }
    
    bool flag = true;
    
    for (int i = 0; i < haystack.size(); i++) {
        flag = true;
        if (haystack.size() - i < needle.size() - 1)  {
            return -1;
        }
        if (haystack[i] == needle[0]) {
           for (int j = 0; j < needle.size(); j++) {
                if (needle[j] != haystack[i + j]) {
                    flag = false;
                }
            }
            if (flag) {
                return i;
            }
        }
    }
    return -1;
}

