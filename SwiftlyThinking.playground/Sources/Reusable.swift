import UIKit

public protocol Reusable {
    static func identifier() -> String
}

public extension Reusable where Self: NSObjectProtocol {
    static func identifier() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

//extension UITableViewCell: Reusable {}
//extension UICollectionViewCell: Reusable {}

extension UITableViewCell: Reusable {
    public static func identifier() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension UICollectionViewCell: Reusable {
    public static func identifier() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

public extension UITableView {
    func register<Cell: Reusable>(cellType: Cell.Type)
        where Cell: UITableViewCell {
            
        register(cellType.self, forCellReuseIdentifier: cellType.identifier())
    }

    func dequeue<Cell: Reusable>(indexPath: IndexPath) -> Cell
        where Cell: UITableViewCell {

        guard let cell = dequeueReusableCell(
            withIdentifier: Cell.identifier(), for: indexPath) as? Cell else {
                fatalError("Unrecognized cell type")
        }

        return cell
    }
}

public extension UICollectionView {
    func register<Cell: Reusable>(cellType: Cell.Type)
        where Cell: UICollectionViewCell {

        register(
            cellType.self,
            forCellWithReuseIdentifier: cellType.identifier()
        )
    }

    func dequeue<Cell: Reusable>(indexPath: IndexPath) -> Cell
        where Cell: UICollectionViewCell {

        guard let cell = dequeueReusableCell(
            withReuseIdentifier: Cell.identifier(),
            for: indexPath) as? Cell else {
            fatalError("Unrecognized cell type")
        }

        return cell;
    }
}

