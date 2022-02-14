//
//  ViewController.swift
//  uiproject
//
//  Created by user214343 on 2/6/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var bookcollectionview: UICollectionView!
    let data : [String] = ["sdfsd", "sdfsdf", "sdfsf", "sdfsf", "adsadd", "ieksh", "dhjadjkn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookcollectionview.delegate = self
        bookcollectionview.dataSource = self
        print(NSHomeDirectory())
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: data[indexPath.item])
        
         
        return cell
    }


}

