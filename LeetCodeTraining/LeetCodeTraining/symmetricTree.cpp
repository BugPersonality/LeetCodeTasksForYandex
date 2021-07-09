#include <iostream>
#include <vector>
#include <map>
#include <stack>
#include <queue>
using namespace std;



struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 

bool isSymmetric(TreeNode* root) {
    queue<TreeNode*> fire;
    
    fire.push(root->left);
    fire.push(root->right);
    
    while (!fire.empty()) {
        TreeNode *currRight = fire.front();
        fire.pop();
        TreeNode *currLeft = fire.front();
        fire.pop();
        
        if (currRight == nullptr && currLeft == nullptr) {
            continue;
        }
        
        if (currRight == nullptr || currLeft == nullptr) {
            return false;
        }
        
        if (currRight->val != currLeft->val) {
            return false;
        }
        
        fire.push(currLeft->left);
        fire.push(currRight->right);
        fire.push(currLeft->right);
        fire.push(currRight->left);
    }
    
    return true;
}

