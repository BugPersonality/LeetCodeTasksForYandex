import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    if (n == 0) {
        return
    } else if (m == 0) {
        nums1.removeAll()
        for i in nums2 {
            nums1.append(i)
        }
        return
    }
    
    var index = 0;
    let startIndex = m;
    let deadIndex = n + m;
    
    for i in startIndex..<deadIndex {
        nums1[i] = nums2[index]
        index += 1
    }
    
    nums1.sort()
}
