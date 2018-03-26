// MARK: Frameworks

import Foundation

// MARK: EntityGateway

protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}
