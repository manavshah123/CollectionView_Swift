//
//  CollectionViewController.swift
//  uiproject
//
//  Created by user214343 on 2/7/22.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    let data : [String] = ["sdfsd", "sdfsdf", "sdfsf", "sdfsf", "adsadd", "ieksh", "dhjadjkn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: data[indexPath.item])
        
         
        return cell
    }
}
