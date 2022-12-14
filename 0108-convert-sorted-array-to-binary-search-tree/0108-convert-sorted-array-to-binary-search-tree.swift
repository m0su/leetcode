/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
  func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard !nums.isEmpty else { return nil }
    let root = bst(nums, start: 0, end: nums.count-1)
    return root
  }
  
  private func bst(_ nums: [Int], start: Int, end: Int) -> TreeNode? {
    guard start <= end else {
      return nil
    }
    
    let rootIndex = start + (end - start)/2
    let rootNode = TreeNode(nums[rootIndex])
    rootNode.left = bst(nums, start: start, end: rootIndex-1)
    rootNode.right = bst(nums, start: rootIndex+1, end: end)
    
    return rootNode
  }
}