//
//  ImageSetCell.swift
//  ShoeShock
//
//  Created by Jadson on 9/12/21.
//

import UIKit

class ProductDetailCell: UICollectionViewCell {
    @IBOutlet weak var imageSet: UIImageView!
    
    func updateImages (images: ImageSet) {
        imageSet.image = UIImage(named: images.imageName) 
    }
}
