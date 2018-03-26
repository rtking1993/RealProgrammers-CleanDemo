// MARK: Frameworks

import Foundation

// MARK: ProgrammersListPresenter

class ProgrammersListPresenter {

    // MARK: Variables

    var programmerResponses: [ProgrammerResponse] = []

    var numberOfRows: Int {
        return programmerResponses.count
    }

    // MARK: Constants

    let interactor: ShowProgrammersListInteractor

    // MARK: Init Methods

    init(interactor: ShowProgrammersListInteractor) {
        self.interactor = interactor
    }

    // MARK: Methods
    
    func viewReady() {
        interactor.showProgrammers()
    }

    func configure(cell: ProgrammerCellView, forRow row: Int) {
        let programmer = programmerResponses[row]
        cell.display(fullName: programmer.fullName)
        cell.display(date: programmer.date.relativeDescription())
        cell.display(favourite: programmer.isFavourite)
    }
}

// MARK: Extension

extension ProgrammersListPresenter: ProgrammersListPresentation {
    func present(programmerResponses: [ProgrammerResponse]) {
        self.programmerResponses = programmerResponses
    }
}
