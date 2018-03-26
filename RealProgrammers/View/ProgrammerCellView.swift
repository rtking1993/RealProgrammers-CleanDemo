// MARK: Frameworks

import Foundation

// MARK: ProgrammerCellView

protocol ProgrammerCellView {
    func display(fullName: String)
    func display(date: String)
    func display(favourite: Bool)
}
