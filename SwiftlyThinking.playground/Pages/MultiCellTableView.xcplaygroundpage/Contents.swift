//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class TableViewController: UIViewController, UITableViewDataSource {
    let tableView: UITableView = {
       return UITableView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(cellType: NameCell.self)
        tableView.register(cellType: AddressCell.self)

        tableView.dataSource = self

        view.addSubview(tableView)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = view.bounds
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 2
        default: return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section, indexPath.row) {
        case (0,0):
            let cell: NameCell = tableView.dequeue(indexPath: indexPath)
            cell.titleLabel?.text = "First Name"
            return cell
        case (0,1):
            let cell: NameCell = tableView.dequeue(indexPath: indexPath)
            cell.titleLabel?.text = "Last Name"
            return cell
        case (1,0):
            let cell: AddressCell = tableView.dequeue(indexPath: indexPath)
            cell.addressLabel?.text = "Home Address"
            return cell
        case (1,1):
            let cell: AddressCell = tableView.dequeue(indexPath: indexPath)
            cell.addressLabel?.text = "Work Address"
            return cell
        default:
            dump(indexPath)
            fatalError("unsupported code path")
        }
    }
}


let viewController = TableViewController()
viewController.view.frame = iPhone6Frame()

PlaygroundPage.current.liveView = viewController.view

//: [Next](@next)
