//
//  ViewController.swift
//  LeetCode
//
//  Created by haitao on 2020/2/29.
//  Copyright © 2020 cn.mafengwo.www. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        bigBucket()
        // Do any additional setup after loading the view.
    }
    
    func bigBucket() {
        let bigBucketSolution = Solution.init()
        let height = [1,8,6,2,5,4,8,3,7]
        
        let result = bigBucketSolution.maxArea(height)
        NSLog("%d", result)
    }

}

