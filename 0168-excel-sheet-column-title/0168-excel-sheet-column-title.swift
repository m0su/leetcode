class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
      return radix(columnNumber)
    } 
  
  func radix(_ val: Int, sheet: String = " ABCDEFGHIJKLMNOPQRSTUVWXYZ") -> String {
    let _sheet = Array(sheet)
    let radix = sheet.count - 1
    var val = val
    var res = ""
    var reminder = 0
    
    while val > 0 {
      reminder = (val % radix)
      
      if reminder == 0 {
        val -= radix
        reminder = radix
      }
      res = [_sheet[reminder]] + res
      val /= radix
    }
    
    return res
  }
}