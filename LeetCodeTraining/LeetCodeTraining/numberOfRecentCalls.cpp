#include <iostream>
#include <vector>
#include <map>
#include <stack>
#include <queue>
using namespace std;

class RecentCounter {
public:
    queue<int> fire;
    
    RecentCounter() { }
    
    int ping(int t) {
        fire.push(t);
        
        while (!fire.empty()) {
            if (fire.front() < t - 3000) {
                fire.pop();
            } else {
                return fire.size();
            }
        }
        
        return 0;
    }
};

// class RecentCounter {
// public:
//     vector<int> fire;
    
//     RecentCounter() { }
    
//     int ping(int t) {
//         fire.push_back(t);
//         int deadIndex = 0;
        
//         for (int i = 0; i < fire.size(); i++) {
//             if (fire[i] < t - 3000) {
//                 deadIndex++;
//             } else {
//                 fire = vector<int>(fire.begin() + deadIndex, fire.end());
//                 return fire.size();
//             }
//         }
//         return 0;
//     }
// };

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter* obj = new RecentCounter();
 * int param_1 = obj->ping(t);
 */
