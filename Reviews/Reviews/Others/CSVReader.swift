//
//  CSVReader.swift
//  Reviews
//
//  Created by Radek Pistelak on 24/01/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import Foundation
import CSV

final class CSVParser {

    let resourceName: String
    private let reader: CSVReader

    init(fileName: String) {
        resourceName = fileName
        let filePath = Bundle(for: CSVParser.self).path(forResource: resourceName, ofType: "csv")!
        let fileContent = try! String(contentsOfFile: filePath)
        reader = try! CSVReader(string: fileContent, hasHeaderRow: true)
    }

    var allLines: [[String]] {
        var lines = [[String]]()
        while let row = reader.next() {
            lines.append(row)
        }
        return lines
    }

    var header: [String] {
        return reader.headerRow ?? []
    }

    var content: [[String]] {
        return Array(allLines.dropFirst())
    }
}
