//
//  SantasRocket.swift
//  AdventOfCode2019
//
//  Created by Raul Rodrigues on 12/3/19.
//  Copyright © 2019 Raul Rodrigues. All rights reserved.
//

import Foundation

class SantasRocketFuel {
    func sumAllFuel(input: String) -> Double {
        let strings = input.components(separatedBy: .newlines)
        var res: Double = 0
        for str in strings {
            if var value = Double(str) {
                value /= 3
                value = value.rounded(.down)
                value -= 2
                res += value
            }
        }
        return res
    }
}
