class Solution {
  func majorityElement(_ nums: [Int]) -> Int {
    //  반수 이상 찾기
    var dict: [Int: Int] = [:]
    nums.forEach { 
      if dict[$0] != nil { dict[$0]! += 1 }
      else { dict[$0] = 1 }
    }
    return dict.max { $0.value < $1.value}?.key ?? 0
    // let res = nums.count / 2 // 에 도달하면 종료
  }
}