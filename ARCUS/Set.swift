//
//  Set.swift
//  ARCUS
//
//  Created by Sean Perez on 3/26/17.
//  Copyright © 2017 Leslie Chicoine. All rights reserved.
//

import Foundation

class Set {
    var setArray = [Shot]()
    var currentEnding = [Double]()
    var roundScores = [[Double]]()
    var sumScore: Int {
        return setArray.reduce(0) { $0 + Int($1.score) }
    }
    
    func numberString() -> String {
        var string = ""
        for value in Set.sharedInstance.setArray {
            string.append(" \(Int(value.score))")
        }
        return string
    }
    
    static let sharedInstance = Set()
}
