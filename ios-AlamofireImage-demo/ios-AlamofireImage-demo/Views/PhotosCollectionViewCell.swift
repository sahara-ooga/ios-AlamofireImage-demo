//
//  PhotosCollectionViewCell.swift
//  ios-AlamofireImage-demo
//
//  Created by OkuderaYuki on 2017/03/15.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotosCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var photosCollectionImage: UIImageView!
    
    static var identifier: String {
        get {
            return String(describing: self)
        }
    }
}
