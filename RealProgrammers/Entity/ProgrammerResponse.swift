// MARK: FRAMEWORKS

import Foundation

// MARK: ProgrammerResponse

struct ProgrammerResponse {
    let fullName: String
    let date: Date
    let isFavourite: Bool
}

// MARK: Extension

extension ProgrammerResponse {
    init(programmer: Programmer) {
        self.fullName = programmer.fullName
        self.date = programmer.date
        self.isFavourite = programmer.isFavourite
    }
}
