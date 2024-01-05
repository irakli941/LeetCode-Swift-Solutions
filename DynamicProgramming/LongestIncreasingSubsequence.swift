//
//  LongestIncreasingSubsequence.swift
//  
//
//  Created by Irakli Shelia on 05.01.24.
//

/**
 * Question Link: https://leetcode.com/problems/guess-number-higher-or-lower-ii/
 * Primary idea: Typical DP problem
 * For each guess:
 * 1) Get the worse case of every choice to guarantee the result
 * 2) Get the least cost among the guaranteed results
 * Time Complexity: O(nlogn), Space Complexity: O(n^2)
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
