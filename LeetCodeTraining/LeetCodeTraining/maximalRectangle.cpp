#include <iostream>
#include <vector>
#include <map>
using namespace std;

class Solution {
public:
    int maximalRectangle(vector<vector<char>>& matrix) {
        if (matrix.empty()) {
            return 0;
        }

        int height = matrix.size();
        int width = matrix[0].size();
        
        if (height == 1) {
            int maxCount = 0;
            int count = 0;
            for (int j = 0; j < width; j++) {
                if (matrix[0][j] == '1') {
                    count++;
                    if (count > maxCount) {
                        maxCount = count;
                    }
                } else {
                    if (count > maxCount) {
                        maxCount = count;
                    }
                    count = 0;
                }
            }
            return maxCount;
        }

        vector<vector<int>> gist(height, vector<int>(0, width));

        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                gist[i].push_back(0);
            }
        }

        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                if (i > 0) {
                    if (matrix[i][j] != '0' && gist[i - 1][j] > 0) {
                        gist[i][j] += gist[i - 1][j] + 1;
                    } else {
                        if (matrix[i][j] == '0'){
                            gist[i][j] = 0;
                        } else {
                            gist[i][j] = 1;
                        }
                    }
                } else {
                    if (matrix[i][j] == '0'){
                        gist[i][j] = 0;
                    } else {
                        gist[i][j] = 1;
                    }

                }
            }
        }

        int maxSquare = 0;

        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                if (gist[i][j] > 0) {
                    int square = gist[i][j];
                    int indexForw = j + 1;
                    int indexBack = j - 1;
                    while (indexForw < width || indexBack > 0) {
                        if (indexForw >= width && indexBack < 0) {
                            break;
                        }

                        if (indexForw < width) {
                            if (gist[i][indexForw] > 0 && gist[i][indexForw] >= gist[i][j]) {
                                square += gist[i][j];
                                indexForw++;
                            } else {
                                indexForw = width;
                            }
                        }

                        if (indexBack >= 0) {
                            if (gist[i][indexBack] > 0 && gist[i][indexBack] >= gist[i][j]) {
                                square += gist[i][j];
                                indexBack -= 1;
                            } else {
                                indexBack = -1;
                            }
                        }

                    }
                    if (square > maxSquare) {
                        maxSquare = square;
                    }
                }

            }
        }

        return maxSquare;
    }
};
