class Solution {
  func majorityElement(_ nums: [Int]) -> Int {
    var nums = nums.sorted()

    return nums[nums.count/2]
    // var dict: [Int: Int] = [:]
    // nums.forEach { 
    //   if dict[$0] != nil { dict[$0]! += 1 }
    //   else { dict[$0] = 1 }
    // }
    // return dict.max { $0.value < $1.value}?.key ?? 0
  }
}