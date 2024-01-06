//
//  AssignCookies.swift
//  
//
//  Created by Irakli Shelia on 06.01.24.
//

/**
 * Question Link: https://leetcode.com/problems/assign-cookies/description/
 * Primary idea: Greedy Algorithm. Sort the greed factors of children and the sizes of cookies. Iterate through both, assigning cookies to the greediest child that can be satisfied by each cookie, maximizing the number of content children.
 *
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 *
 */

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let greeds = g.sorted()
        let sizes = s.sorted()
        var gI = 0
        var sI = 0
        var result = 0
        while gI < greeds.count && sI < sizes.count {
            if sizes[sI] >= greeds[gI] {
                result += 1
                gI += 1
            }
            sI += 1
        }
        return result
    }
}
