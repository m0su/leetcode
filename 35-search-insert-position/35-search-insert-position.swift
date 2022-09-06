// 있으면 인덱스를. 없으면 적절한 위치에 넣어라

let nums = [1,3,5,6]

class Solution {
  func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var p1 = 0
        var p2 = nums.count - 1
        
        while true {
            if nums[p1] == target { return p1 }
            if nums[p2] == target { return p2 }
            
            let mid = (p1 + p2) / 2
            if p1 == mid || p2 == mid {
                if nums[p1] < target, target < nums[p2] {
                    return p2
                } else if nums[p1] > target {
                    return p1
                } else if target > nums[p2] {
                    return p2 + 1
                }
                return -1
            }
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                p1 = mid
            } else {
                p2 = mid
            }
        }
    }
}