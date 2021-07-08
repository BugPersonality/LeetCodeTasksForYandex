#include <iostream>
#include <vector>
#include <map>
using namespace std;

vector<string> summaryRanges(vector<int>& nums) {
    vector<string> answ;
    if (nums.size() == 1) {
        answ.push_back(to_string(nums[0]));
        return answ;
    }
    
    if (nums[0] == nums[1] - 1) {
        int start = nums[0];
        int end = nums[1];
        
        for (int i = 1; i < nums.size(); i++) {
            if (nums[i] == nums[i + 1] - 1) {
                end = nums[i + 1];
            } else {
                if (end > start) {
                    answ.push_back(to_string(start) + "->" + to_string(end));
                    start = nums[i + 1];
                } else {
                    answ.push_back(to_string(start));
                }
                  
            }
        }
    } else {
        int start;
        int end;
        int j = 0;
        bool flag = true;
        while (flag) {
            if (nums[j] == nums[j + 1] - 1) {
                flag = false;
                int start = nums[j];
                int end = nums[j + 1];
            } else {
                answ.push_back(to_string(nums[j]));
            }
        }
        for (int i = j; i < nums.size(); i++) {
            if (nums[i] == nums[i + 1] - 1) {
                end = nums[i + 1];
            } else {
                answ.push_back(to_string(start) + "->" + to_string(end));
                start = nums[i + 1];
            }
        }
    }
    return answ;
}

