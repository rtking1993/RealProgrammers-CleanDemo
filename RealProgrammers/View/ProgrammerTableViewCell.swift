// MARK: Frameworks

import UIKit

// MARK: ProgrammerTableViewCell

class ProgrammerTableViewCell: UITableViewCell {

    // MARK: Outlets

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var favouriteLabel: UILabel!
}

// MARK: ProgrammerCellView Methods

extension ProgrammerTableViewCell: ProgrammerCellView {
    func display(fullName: String) {
        fullNameLabel.text = fullName
    }

    func display(date: String) {
        dateLabel.text = date
    }

    func display(favourite: Bool) {
        favouriteLabel.isHidden = !favourite
    }
}
