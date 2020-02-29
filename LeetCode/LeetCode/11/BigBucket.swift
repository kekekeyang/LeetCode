//
//  BigBucket.swift
//  LeeCode
//
//  Created by haitao on 2020/2/19.
//  Copyright © 2020 cn.mafengwo.www. All rights reserved.
//

import Foundation

//给定 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0)。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。
//
//说明：你不能倾斜容器，且 n 的值至少为 2。

//输入: [1,8,6,2,5,4,8,3,7]
//输出: 49

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var size = 0
        
        while i<j {
            let c_size = (j - i) * min(height[i], height[j])
            size = c_size > size ? c_size: size
            print(size)
            if height[i] > height[j] {
                j -= 1
            } else {
                i += 1
            }
        }
        return size
    }
}
