//
//  ViewController.swift
//  day2_collectionView
//
//  Created by Chinh Ng on 02/06/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCollectionView()
        registerCollectionViewCell()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func registerCollectionViewCell() {
        let collectionViewCell = UINib(nibName: "CollectionViewCell", bundle: nil)
        self.collectionView.register(collectionViewCell, forCellWithReuseIdentifier: "CollectionViewCell")
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.numberLabel.text = String(indexPath.row + 1)
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Khoảng cách từ đáy hàng này đến đầu hàng kia
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    // the spacing between successive items in the rows or columns of a section.
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 10
//    }
    
    // Khoảng cách trái phải trên dưới của collectionView đến cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width - 41
        print(collectionWidth)
        print("chia 3: \(collectionWidth/3)")
        let size = CGSize(width: collectionWidth/3, height: collectionWidth/3)
        return size
    }
}
