// MARK: Frameworks

import UIKit

// MARK: MainViewController

class ProgrammersTableViewController: UITableViewController {

    // MARK: Variables
    
    var presenter: ProgrammersListPresenter!

    // MARK: View Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewReady()
    }

    // MARK: UITableViewDataSource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProgrammerTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as! ProgrammerTableViewCell
        presenter.configure(cell: cell, forRow: indexPath.row)
        return cell
    }
}
