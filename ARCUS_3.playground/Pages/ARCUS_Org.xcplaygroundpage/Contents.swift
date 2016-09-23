//
//  EndCalculator.swift
//  ARCUS
//
//  Created by Leslie Chicoine on 9/14/16.
//  Copyright © 2016 Leslie Chicoine. All rights reserved.
//

import Foundation
import UIKit


var score = 0
var endNum = 0
var roundSum = 0
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


func sumEndScore(roundScores: [[Int]]) -> Int {
    var sum = 0
    for number in roundScores[endNum] {
        sum += number
    }
    print("sum= \(sum)")
    return sum
}


func sumRoundScore() -> Int {
    var roundSum = 0
    
    for x in 0 ..< roundScores.count {
        for y in 0 ..< roundScores[x].count {
            roundSum += roundScores[x][y]
        }
    }
    print("roundSum = \(roundSum)")
    return roundSum
}







//// ORIGINAL ////
//var endScore = [0]
//var roundScore = [0]
//
//func addingScore(endScore: [Int]) -> Int {
//    var sum = 0
//    for number in endScore {
//        sum += number
//    }
//    roundScore += [sum] // ** TO DO: remove this once updating round total with all end totals
//    return sum
//}


//// Sum scores into ends and show as rounds total
//var endScore: [Int] = []
//var roundScore = [[Int]]()
//
//func addingScore(endScore: [Int]) -> Int {
//    var sum = 0
//    for number in endScore {
//        sum += number
//    }
//
//    print("endScore's sum \(sum)")
//    return sum
//}
//
//// Sum ends into round total
//func addingRoundScore() -> Int {
//    var endSum = 0
//
//    for _ in roundScore {
//        for score in endScore {
//            endSum += score
//            print("the loop through the array is \(score)")
//        }
//    }
//    print("roundScore's endSum's sum \(endSum)")
//    return endSum
//}
//
//func newEnd() {
////    roundScore.insertContentsOf([endScore], at: roundScore.count)
//    roundScore += [endScore]
//    print("roundScore's count \(roundScore.count)")
//    endScore = [0]
//}

//
//addingScore(endScore)
//var roundSum = addingRoundScore()
//
//print(endScore)
//print(roundScore)
//print(roundSum)
//
//addingScore(endScore)
//addingRoundScore()
//print(roundSum)

