class Solution {
  func titleToNumber(_ columnTitle: String) -> Int {
    // 26n+a
    // asciiValue = unicodeScalars.first!.value
    // return columnTitle.reduce(0) { $0 * 26 + Int(($1.asciiValue! - 64))}    
    return columnTitle.unicodeScalars.reduce(0) { $0 * 26 + Int($1.value - 64) }
  }
}