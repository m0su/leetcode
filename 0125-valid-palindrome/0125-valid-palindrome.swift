class Solution {
  func isPalindrome(_ s: String) -> Bool {
    // 알파벳만 취한다
    // 48~57, 65~122,
    var arr2 = s.lowercased().compactMap { $0.asciiValue }
    var arr21 = arr2.filter { ($0 <= 122 && $0 >= 97) == true || ($0 <= 57 && $0 >= 48) == true}.map { UnicodeScalar($0) }
    var arr4 = arr21
    var arr3 = String(arr4.map { Character($0) })
    print("arr3: \(arr3)")
    let res = arr3 == String(arr3.reversed())
    // 으어 취한다
    // 뒤집어서 같은지 확인
    
    return res
  }
}