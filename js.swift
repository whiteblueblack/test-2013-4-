//
//  File.swift
//  text11
//
//  Created by ZH13 on 16/4/7.
//  Copyright © 2016年 ZH13. All rights reserved.
//

import Foundation

struct calculation  {
    private var Currentalgorithm:algorithm = .nochoice
    
    mutating func setCurrentalgorithm(temporary:algorithm) {
        Currentalgorithm = temporary
    }
    
    func readCurrentalgorithm() -> algorithm {
        return Currentalgorithm
    }
    
    enum algorithm {
        case addition
        case subtraction
        case multiplication
        case division
        case square
        case exponential
        case nochoice
    }
    
    func Resultseeking(Operationnumber Operationnumber:Double, be Operationnumber:Double) -> String {
        var return = ""
        switch Currentalgorithm {
        case .addition:
            return = "\(Operationnumber + beOperationnumber)"
        case .subtraction:
            return = "\(Operationnumber - beOperationnumber)"
        case .multiplication:
            return = "\(Operationnumber * beOperationnumber)"
        case .division where beOperationnumber != 0 :
            return = "\(Operationnumber / beOperationnumber)"
        case .square:
            return = "\(Operationnumber * Operationnumber)"
        case .exponential:
            var temporary = Operationnumber
            let intbeOperationnumber = Int(beOperationnumber)
            for _ in 1..<intbeOperationnumber {
                temporary *= Operationnumber
            }
            return = "\(temporary)"
        case .nochoice:
            return = "Error, no selection algorithm"
        default:
            return = "0 不能做be除数！"
            
        }
        return
    }
    
}