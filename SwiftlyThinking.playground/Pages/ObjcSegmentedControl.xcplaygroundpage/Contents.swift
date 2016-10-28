//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    
    let segmentedControl: UISegmentedControl = {
        return UISegmentedControl(items: ["All", "Filter1", "Filter2"])
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(segmentedControl)

        segmentedControl.addTarget(
            self,
            action: #selector(segmentedControlTapped(sender:)),
            for: .touchUpInside)
    }

    @objc private func segmentedControlTapped(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("All selected")
        case 1:
            print("Filter 1 selected")
        case 2:
            print("Filter 2 selected")
        default:
            print("Ummm, this shouldn't happen")
        }
    }
}

let viewController = ViewController()
viewController.view.frame = iPhone6Frame()
PlaygroundPage.current.liveView = viewController.view

//: [Next](@next)
