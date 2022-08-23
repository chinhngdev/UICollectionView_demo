//
//  CollectionViewCell.swift
//  day2_collectionView
//
//  Created by Chinh Ng on 02/06/2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = #colorLiteral(red: 0.904139936, green: 0.7539460063, blue: 0.2260379195, alpha: 1)
    }

}
