//
//  supp.swift
//  AdventOfCode2019
//
//  Created by Raul Rodrigues on 12/3/19.
//  Copyright © 2019 Raul Rodrigues. All rights reserved.
//

import Foundation


class File {
    
    public static func write(output: String, to file: String) {
        let path = getDocumentsDirectory().appendingPathComponent(file)
        do {
            try output.write(to: path, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print(error)
        }
        
    }
    
    public static func getInput(from day: Int) -> String? {
        let fileUrl = "/Users/raulrodrigues/Documents/PersonalProjects/AdventOfCode2019/AdventOfCode2019/Challenges/Day\(day)/input"
        
        if URL(string: fileUrl) != nil {
            do {
                let data = try String(contentsOfFile: fileUrl, encoding: .utf8)
                return data
            } catch {
                return nil
            }
        } else {
            return nil
        }
    }
    
    private static func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
