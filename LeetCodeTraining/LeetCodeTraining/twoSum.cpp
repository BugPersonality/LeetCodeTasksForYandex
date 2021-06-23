
#include <iostream>
#include <vector>
#include <map>
using namespace std;

vector<int> twoSum(vector<int>& nums, int target) {
    map<int, int> numsMap;
    vector<int> answer;
    for (int i = 0; i < nums.size(); i++) {
        numsMap.insert(pair<int, int>(nums[i], i));
    }
    for (int i = 0; i < nums.size(); i++) {
        int diff = target - nums[i];
        if (numsMap.count(diff) > 0 && numsMap[diff] != i) {
            answer.push_back(i);
            answer.push_back(numsMap[diff]);
            return answer;
        }
    }
    return answer;
}

