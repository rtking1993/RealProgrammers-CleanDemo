// MARK: Frameworks

import Foundation

// MARK: ShowProgrammersListInteractor

class ShowProgrammersListInteractor {

    // MARK: Constants

    let entityGateway: EntityGateway

    // MARK: Variables

    var programmersListPresentation: ProgrammersListPresentation!

    // MARK: Init Methods

    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
    }

    // MARK: Helper Methods

    func showProgrammers() {
        let programmers = entityGateway.fetchProgrammers()
        let programmerResponses = programmers.map({ProgrammerResponse(programmer: $0)})
        programmersListPresentation.present(programmerResponses: programmerResponses)
    }
}
