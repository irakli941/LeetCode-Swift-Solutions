/**
 * Question Link: https://leetcode.com/problems/longest-increasing-subsequence/
 * Primary idea: Dynamic Programming. Use a DP array to store the longest increasing subsequence up to each index, comparing each element with its previous elements to find the maximum valid subsequence length.
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 1, count: nums.count)
        for lastNumIndex in nums.indices {
            var maxPrefixLength = 0
            for prefixIndex in 0..<lastNumIndex {
                if nums[lastNumIndex] > nums[prefixIndex] {
                    maxPrefixLength = max(maxPrefixLength, dp[prefixIndex])
                }
            }
            dp[lastNumIndex] = maxPrefixLength + 1
        }
        return dp.max() ?? 0
    }
}
