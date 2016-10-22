//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class SegmentedControl<Item: CustomStringConvertible>: UIView {
    private let segmentedControl: UISegmentedControl
    private let items: [Item]

    var didTapItem: (Item) -> Void = { _ in }

    init(items: [Item]) {
        self.items = items
        let titles = items.map { String(describing: $0) }
        segmentedControl = UISegmentedControl(items: titles)

        super.init(frame: CGRect.zero)
        
        addSubview(segmentedControl)
        segmentedControl.addTarget(self, action: #selector(segmentedControlTapped(sender:)), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        segmentedControl.frame = bounds
    }

    func segmentedControlTapped(sender: UISegmentedControl) {
        didTapItem(items[segmentedControl.selectedSegmentIndex])
    }
}

enum FilterOption {
    case all
    case type1
    case type2
}
extension FilterOption: CustomStringConvertible {
    var description: String {
        switch self {
        case .all: return "All"
        case .type1: return "Type 1"
        case .type2: return "Type 2"
        }
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let segmentedControl = SegmentedControl<FilterOption>(items:[.all, .type1, .type2])
        segmentedControl.didTapItem = { item in
            print(item)
            switch item {
            case .all: // show all
                print("filtering by all...")
            case .type1: // show type1
                print("filtering by type1...")
            case .type2: // show type2
                print("filtering by type2...")
            }
        }

        segmentedControl.frame = CGRect(x: 0, y: 0, width: 300, height: 40)
        view.addSubview(segmentedControl)
    }
}

let viewController = ViewController()
viewController.view.frame = iPhone6Frame()

PlaygroundPage.current.liveView = viewController.view

//: [Next](@next)
