//
//  ReviewsTests.swift
//  ReviewsTests
//
//  Created by Radek Pistelak on 24/01/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import XCTest
@testable import Reviews

class ReviewsTests: XCTestCase {

    let parser = CSVParser(fileName: "reviews")

    func test_parserShouldParseAllReviews() {
        let header = parser.header
        let content = parser.content

        print("\(header): \(content)");
    }
}
