//
//  ProductCell.swift
//  ShoeShock
//
//  Created by Jadson on 7/12/21.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productTlt: UILabel!
    @IBOutlet weak var productPr: UILabel!
    
    func updateViews(product: Product) {
        productImg.image = UIImage(named: product.imageName)
        productTlt.text = product.title
        productPr.text = product.price
    }
}
