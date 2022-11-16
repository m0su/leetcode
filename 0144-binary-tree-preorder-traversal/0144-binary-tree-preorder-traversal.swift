 
class Solution {
  // Input: root = [1,null,2,3]
  // Output: [1,2,3]
  // 루트노드부터 o-l-r
  func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }

    var arr = [root.val]
    arr.append(contentsOf: preorderTraversal(root.left))
    arr.append(contentsOf: preorderTraversal(root.right))
    return arr
  }

  // Input: root = [1,null,2,3]
  // Output: [3,2,1]
  // 루트노드부터 l-r-o
  func postorderTraversal(_ root: TreeNode?) -> [Int] {
    return []
  }
}