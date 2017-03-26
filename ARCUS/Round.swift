//
//  Round.swift
//  ARCUS
//
//  Created by Sean Perez on 3/26/17.
//  Copyright © 2017 Leslie Chicoine. All rights reserved.
//

import Foundation

class Round {
    var roundArray = [Shot]()
    var currentEnding = [Double]()
    var roundScores = [[Double]]()
    var sumScore: Int {
        return roundArray.reduce(0) { $0 + Int($1.score) }
    }
    
    func numberString() -> String {
        var string = ""
        for value in roundArray {
            string.append(" \(Int(value.score))")
        }
        return string
    }
    
}
