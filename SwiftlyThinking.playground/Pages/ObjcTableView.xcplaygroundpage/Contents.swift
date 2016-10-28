//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(NameCell.self, forCellReuseIdentifier: "NameCellIdentifier")
    }

//    override func tableView(
//        _ tableView: UITableView,
//        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(
//            withIdentifier: "NameCellIdentifier", for: indexPath)
//        
//        cell.titleLabel?.text = "I can write Swift"
//        return cell
//    }
//
//    override func tableView(
//        _ tableView: UITableView,
//        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell: NameCell = tableView.dequeueReusableCell(
//            withIdentifier: "NameCellIdentifier", for: indexPath)
//
//        cell.titleLabel?.text = "I can write Swift"
//        return cell
//    }

//    override func tableView(
//        _ tableView: UITableView,
//        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(
//            withIdentifier: "NameCellIdentifier", for: indexPath) as NameCell
//        cell.titleLabel?.text = "I can write Swift"
//        return cell
//    }

//    override func tableView(
//        _ tableView: UITableView,
//        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
//        let cell = tableView.dequeueReusableCell(
//            withIdentifier: "NameCellIdentifier", for: indexPath) as? NameCell
//
//        cell.titleLabel?.text = "I can write Swift"
//        return cell
//    }

//    override func tableView(
//        _ tableView: UITableView,
//        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(
//            withIdentifier: "NameCellIdentifier", for: indexPath) as! NameCell
//
//        cell.titleLabel?.text = "I can write Swift"
//        return cell
//    }

    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(
            withIdentifier: NameCell.identifier(), for: indexPath) as! NameCell

        cell.titleLabel?.text = "I can write Swift"
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

let viewController = ViewController()
viewController.view.frame = iPhone6Frame()
PlaygroundPage.current.liveView = viewController.view

//: [Next](@next)
