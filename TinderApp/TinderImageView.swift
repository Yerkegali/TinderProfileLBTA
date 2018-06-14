//
//  TinderImageView.swift
//  TinderApp
//
//  Created by Yerkegali Abubakirov on 11.06.2018.
//  Copyright © 2018 Yerkegali Abubakirov. All rights reserved.
//

import UIKit

class TinderImageView: UIImageView {
    
    
    
    let imageIndexLabel: UILabel = {
        let l = UILabel()
        l.textColor = UIColor.white
        
        var imageIndex2: NSNumber!
        l.text = "070"
        l.font = UIFont.boldSystemFont(ofSize: 18)
        
        l.layer.shadowOpacity = 0.7
        l.layer.shadowOffset = .zero
        
        return l
    }()
    
    @IBInspectable
    
    var imageIndex: NSNumber!  {
        didSet{
            print(imageIndex)
            let imageName = "daenerys\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            layer.cornerRadius = 5
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(imageIndexLabel)
        imageIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imageIndexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageIndexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    }
    
}
