class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
    let a = Array(a) 
    let b = Array(b) 
    var answer = [""]
    var carry = 0
    var i = a.count - 1 
    var j = b.count - 1 

    while i >= 0 || j >= 0 || carry > 0 {
        var sum = carry

        if i >= 0 {
            sum = sum + Int(String(a[i]))!
            i = i - 1
        }
        
        if j >= 0 {
            sum = sum + Int(String(b[j]))!
            j = j - 1
        }
        answer.append("\(sum % 2)")
        carry = sum / 2
    }

    return answer.reversed().joined()
}
}