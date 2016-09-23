//
//  EndCalculator.swift
//  ARCUS
//
//  Created by Leslie Chicoine on 9/14/16.
//  Copyright © 2016 Leslie Chicoine. All rights reserved.
//

import Foundation
import UIKit

var roundScores = [[Int]]()
var currentEnd = [Int]()


func addScoreToEnd (score: Int) {
    currentEnd.append(score)
}

// sumEndScore, can feed in any end, will send in current end as needed

func sumScore(end: [Int]) -> Int {
    return end.reduce(0, combine: +)
}

// then call --> sumScore(currentEnd)

func prepNewEnd() {
    roundScores.append(currentEnd)
    currentEnd = [Int]()
}

func sumEnds() -> Int {
    var total = 0
    for x in 0 ..< roundScores.count {
        
        for y in 0 ..< roundScores[x].count {
            total += roundScores[x][y]
        }
        
    }
    print(total)
    let sumTotal = total + sumScore(currentEnd)
    return sumTotal
}