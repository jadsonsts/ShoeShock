//
//  CartCell.swift
//  ShoeShock
//
//  Created by Jadson on 12/12/21.
//

import UIKit

class CartCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productValue: UILabel!
    @IBOutlet weak var productSize: UILabel!
    @IBOutlet weak var productQty: UILabel!
    
    var selectedProduct: SelectedProduct!

    
    func updateTable (selProduct: SelectedProduct, quantity: Int) {
        
        productName.text = selProduct.product.title
        productImage.image = UIImage(named: selProduct.product.imageName)
        productValue.text = "$\(selProduct.product.price * Double(selProduct.quantity))"
        productSize.text = "7"
        productQty.text = "\(quantity)"
        
    }
    
    @IBAction func stepperValueChanges(_ sender: UIStepper) {
        productQty.text = String(format: "%.0f", sender.value)
        self.selectedProduct.quantity = Int(sender.value)
        self.selectedProduct.calculateTotal()
    }

}
