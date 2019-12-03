//
//  main.swift
//  AdventOfCode2019
//
//  Created by Raul Rodrigues on 12/3/19.
//  Copyright © 2019 Raul Rodrigues. All rights reserved.
//

import Foundation

File.write(output: "hello world", to: "output.txt")
guard let input = File.getInput(from: 1) else { fatalError() }
let srf = SantasRocketFuel()
print(srf.sumAllFuel(input: input))

