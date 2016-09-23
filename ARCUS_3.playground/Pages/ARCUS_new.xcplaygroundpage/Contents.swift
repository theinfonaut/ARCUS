//: Playground - noun: a place where people can play

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

//func sumEnds(ends: [[Int]]) -> Int {
//    roundScores.reduce(0) { (Int, <#[Int]#>) -> T in
//        roundScores
//    }
//    
//}


//Button Clicked: 2
addScoreToEnd(2)
addScoreToEnd(5)
sumScore(currentEnd)
prepNewEnd() // the info isn't in round scores until this is called, figure out how to do it as you go, instead of just at a new end
sumEnds()
addScoreToEnd(3)
addScoreToEnd(10)
sumEnds()
sumScore(currentEnd)
addScoreToEnd(10)
sumScore(currentEnd)
sumEnds()


// ---> add a way to sum all the scores and show on label


//
////Button Clicked: New End
//addScoreToEnd(4)
//addScoreToEnd(5)
//
////Button Clicked: New End
//prepNewEnd()
//
////roundScores.reduce won't work unless sumScore is a generic, try using "closure syntax", or use "map and reduce", or use a for loop, sum an array of arrays, using a reduce is ideal
//
//print(roundScores)