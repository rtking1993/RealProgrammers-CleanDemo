// MARK: Frameworks

import Foundation

// MARK: Programmer

struct Programmer {

    // MARK: Constants

    let firstName: String
    let lastName: String
    let emacs: Int
    let caffeine: Int
    let date: Date
    let isFavourite: Bool

    // MARK: Variables

    var fullName: String {
        get {
            return firstName + " " + lastName
        }
    }

    var rating: Float {
        get {
            return Float((emacs + caffeine)/2)
        }
    }
}
