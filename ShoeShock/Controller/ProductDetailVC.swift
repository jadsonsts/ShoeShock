//
//  ProductDetailVC.swift
//  ShoeShock
//
//  Created by Jadson on 8/12/21.
//

import UIKit

class ProductDetailVC: UIViewController {

    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    
    var product: Product!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productName.text = product.title
        productImage.image = UIImage(imageLiteralResourceName: product.imageName)
        productPrice.text = product.price
    }
    
    
    @IBAction func addToCartPressed(_ sender: UIButton) {
        
    }


}
