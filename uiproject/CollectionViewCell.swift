//
//  CollectionViewCell.swift
//  uiproject
//
//  Created by user214343 on 2/7/22.
//

import UIKit


class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var booklabel: UILabel!
    
    func configure(with bookname: String){
        booklabel.text = bookname
    }
}
