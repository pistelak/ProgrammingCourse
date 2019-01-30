import Foundation

/**
 - 0 : "Package Name"
 - 1 : "App Version Code"
 - 2 : "App Version Name"
 - 3 : "Reviewer Language"
 - 4 : "Device"
 - 5 : "Review Submit Date and Time"
 - 6 : "Review Submit Millis Since Epoch"
 - 7 : "Review Last Update Date and Time"
 - 8 : "Review Last Update Millis Since Epoch"
 - 9 : "Star Rating"
 - 10 : "Review Title"
 - 11 : "Review Text"
 - 12 : "Developer Reply Date and Time"
 - 13 : "Developer Reply Millis Since Epoch"
 - 14 : "Developer Reply Text"
 - 15 : "Review Link"
 */



struct Review {
    let starRating: Int
    let reviewText: String
}


struct Statistics {

    let reviews: [Review]

    func numberOfReviews(withRating rating: Int) -> Int {
        var count = 0

        for review in reviews {
            if review.starRating == rating {
                count += 1
            }
        }

        return count
    }

    func numberOfReviewsWithFourStarRating() -> Int {
        return numberOfReviews(withRating: 4)
    }

    func numberOfReviewsWithFiveStarRating() -> Int {
        return numberOfReviews(withRating: 5)
    }

    func averageRating() -> Double {
        fatalError("Please, implement me!")
    }
}
