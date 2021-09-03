

//import Foundation
//
//class Solution3 {
//    func merge(_ intervals: [[Int]]) -> [[Int]] {
//        var sortedIntervals = intervals
//        sortedIntervals.sort { ($0[0] ) < ($1[0]) }
//
//        guard !sortedIntervals.isEmpty else {
//            return []
//        }
//        guard sortedIntervals.count > 2 else {
//            if sortedIntervals[0][1] >= sortedIntervals[1][0] { //&& sortedIntervals[0][1] <= sortedIntervals[1][1] {
//                return [[sortedIntervals[0][0], max(sortedIntervals[1][1], sortedIntervals[0][1]) ]]
//            } else if sortedIntervals[0] == sortedIntervals[1] {
//                return [sortedIntervals[0]]
//            } else {
//                return sortedIntervals
//            }
//        }
//        var mergedArray: [[Int]] = []
//        var index = 0
//
//        while (index < sortedIntervals.count - 1) {
//            var interval = interval(first: sortedIntervals[index].first(), second: sortedIntervals[index].second())
//            for i in (index + 1)..<sortedIntervals.count {
//                if interval.second >= sortedIntervals[i].first()  {
//                    interval.second = max(sortedIntervals[i].second(), sortedIntervals[index].second())
//                    index = i + 1
//                } else if interval.second < sortedIntervals[i].first() {
//                    index = i
//                    break
//                }
//            }
//            mergedArray.append([interval.first, interval.second])
//        }
//        if (index == sortedIntervals.count - 1) {
//            mergedArray.append([sortedIntervals[sortedIntervals.count - 1].first(), sortedIntervals[sortedIntervals.count - 1].second()])
//        }
//
//        return mergedArray
//    }
//}
//
//struct interval {
//    var first: Int
//    var second: Int
//}
//
//extension Array {
//    func first() -> Int {
//        if self.count >= 2 {
//            return self[0] as! Int
//        } else {
//            return -1
//        }
//    }
//    func second() -> Int {
//        if self.count >= 2 {
//            return self[1] as! Int
//        } else {
//            return -1
//        }
//    }
//}
