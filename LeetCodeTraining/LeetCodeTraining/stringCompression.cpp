#include <iostream>
#include <vector>
#include <map>
using namespace std;

int compress(vector<char>& chars) {
    if (chars.size() == 1) { return 1; }
    if (chars.size() == 0) { return 0; }
    
    int i = 0;
    int n = chars.size();
    int newLen = 0;
    
    while(i < n) {
        int j = i;
        while(j < n && chars[j] == chars[i]) {
            j += 1;
        }
        chars[newLen++] = chars[i];
        
        if (j - i > 1) {
            for (char c : to_string(j - i)) {
                 chars[newLen++] = c;
            }
        }
        
        i = j;
    }
    
    return newLen;
}
