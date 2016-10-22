//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class EventHandler {
    @objc func handleEvent() {
        print("event handled")
    }
}

class ViewController: UIViewController {
    let segmentedControl: UISegmentedControl = {
        return UISegmentedControl(items: ["All", "Filter1", "Filter2"])
    }()
    let eventHandler = EventHandler()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(segmentedControl)

        segmentedControl.addTarget(eventHandler, action: #selector(EventHandler.handleEvent), for: .touchUpInside)
    }
}

let viewController = ViewController()
viewController.view.frame = iPhone6Frame()

PlaygroundPage.current.liveView = viewController.view

//: [Next](@next)
