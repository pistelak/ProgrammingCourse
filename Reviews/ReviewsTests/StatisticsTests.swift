//
//  StatisticsTests.swift
//  ReviewsTests
//
//  Created by Radek Pistelak on 24/01/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import Foundation

import XCTest
@testable import Reviews

class StatisticsTests: XCTestCase {

    func test_thereShouldBeOneFiveStarReviews() {

        let review1 = Review(starRating: 5, reviewText: "ASD")
        let review2 = Review(starRating: 1, reviewText: "DSA")

        let statistics = Statistics(reviews: [review1, review2])

        XCTAssertEqual(statistics.numberOfReviewsWithFiveStarRating(), 1)
    }

    func test_thereShouldBeZeroFourStarReviews() {

        let review1 = Review(starRating: 1, reviewText: "ASD")

        let statistics = Statistics(reviews: [review1])
    XCTAssertEqual(statistics.numberOfReviewsWithFourStarRating(), 0)
    }

    func test_thereShouldBeOneFourStarReviews() {

        let review1 = Review(starRating: 4, reviewText: "ASD")
        let review2 = Review(starRating: 1, reviewText: "DSA")

        let statistics = Statistics(reviews: [review1, review2])
    XCTAssertEqual(statistics.numberOfReviewsWithFourStarRating(), 1)
    }
    
}
