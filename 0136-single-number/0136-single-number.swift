class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
    var arr1: [Int] = []
    var arr2: [Int] = []
    
    nums.forEach {
      if arr1.contains($0) { arr2.append($0) }
      else { arr1.append($0) }
    }
      
    let item = arr1 - arr2
    
    return item.first ?? 0
  }
}

extension Array where Element: Hashable {
  static func - (a: Self, b: Self) -> Self {
    let set = Set(b)
    return a.filter { !set.contains($0) }
  }
}