import UIKit
import PlaygroundSupport

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(cellType: NameCell.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: NameCell = tableView.dequeue(indexPath: indexPath)
        cell.titleLabel?.text = "Hello"
        return cell
    }
}


let viewController = TableViewController()
viewController.view.frame = iPhone6Frame()

PlaygroundPage.current.liveView = viewController.view
