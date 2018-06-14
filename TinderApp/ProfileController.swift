//
//  ProfileController.swift
//  TinderApp
//
//  Created by Yerkegali Abubakirov on 11.06.2018.
//  Copyright © 2018 Yerkegali Abubakirov. All rights reserved.
//

import UIKit

class ProfileController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.white
        navigationItem.title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView?.alwaysBounceVertical = true
        
        
        let headerNib = UINib(nibName: "Header", bundle: nil)
        collectionView?.register(headerNib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.width)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        
        return header
        
    }
    
    
}
