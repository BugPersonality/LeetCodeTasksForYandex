//
//  main.cpp
//  LeetCodeTraining
//
//  Created by Данил Дубов on 23.06.2021.
//

#include <iostream>
#include <vector>
#include <map>
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

int main(int argc, const char * argv[]) {
    cout << strStr("aaa", "a") << endl;
    return 0;
}
