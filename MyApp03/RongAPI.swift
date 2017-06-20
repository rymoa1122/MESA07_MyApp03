//
//  RongAPI.swift
//  MyApp03
//
//  Created by iii on 2017/6/20.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class RongAPI{
    static func createAnswer(_ n:Int) ->String {
        var r = Set<Int>()
        while r.count < n {
            let rand = Int(arc4random_uniform(10));
            r.insert(rand)
        }
        var ret = ""
        for v in r {
            ret += String(v)
        }
        return ret
    }
    
    static func checkAB(answer:String, guess:String) -> String {
        var A = 0, B = 0
        for i in 0..<answer.characters.count {
            let ac = substring(str: answer, start: i, len: 1)
            let gc = substring(str: guess, start: i, len: 1)
            if ac == gc {
                A += 1
            }else if answer.contains(gc) {
                B += 1
            }
        }
        return "\(A)A\(B)B"
    }
    
    static func substring(str:String, start:Int, len:Int) -> String {
        let sindex = str.index(str.startIndex, offsetBy: start)
        let eindex = str.index(str.startIndex, offsetBy: start + len)
        let range = sindex..<eindex
        
        return str.substring(with: range)
    }
    
}
