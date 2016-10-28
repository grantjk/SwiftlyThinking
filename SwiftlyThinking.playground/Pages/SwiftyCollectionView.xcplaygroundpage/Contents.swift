//: [Previous](@previous)

import UIKit
import PlaygroundSupport

extension UICollectionViewCell: Reusable {}

class CollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(cellType: ImageCell.self)
    }

    override func collectionView(
        _ collectionView: UICollectionView, 
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: ImageCell = collectionView.dequeue(indexPath: indexPath)
        cell.imageView.image = UIImage(named:"logo.jpg")
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
}


let layout = UICollectionViewFlowLayout()
layout.itemSize = CGSize(width: 100, height: 100)

let collectionViewController = CollectionViewController(collectionViewLayout: layout)
collectionViewController.view.frame = iPhone6Frame()
PlaygroundPage.current.liveView = collectionViewController.view

//: [Next](@next)
