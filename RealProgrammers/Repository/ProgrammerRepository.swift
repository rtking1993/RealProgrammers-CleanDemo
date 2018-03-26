// MARK: Frameworks

import Foundation

// MARK: ProgrammerRepository

class ProgrammerRepository {

    // MARK: Variables

    var programmers: [Programmer] = []

    // MARK: Init Methods

    init() {
        let ryan: Programmer = Programmer(firstName: "Ryan",
                                                lastName: "King",
                                                emacs: 7,
                                                caffeine: 8,
                                                date: Date(),
                                                isFavourite: true)
        let fabio: Programmer = Programmer(firstName: "Fabio",
                                                lastName: "Santoro",
                                                emacs: 8,
                                                caffeine: 10,
                                                date: Date(),
                                                isFavourite: false)
        let kiera: Programmer = Programmer(firstName: "Kiera",
                                                lastName: "O'Reilly",
                                                emacs: 10,
                                                caffeine: 3,
                                                date: Date(),
                                                isFavourite: true)
        let spencer: Programmer = Programmer(firstName: "Spencer",
                                           lastName: "Macdonald",
                                           emacs: 6,
                                           caffeine: 2,
                                           date: Date(),
                                           isFavourite: true)
        programmers = [ryan, fabio, kiera, spencer]
    }
}

// MARK: EntityGateway Methods

extension ProgrammerRepository: EntityGateway {
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
}
