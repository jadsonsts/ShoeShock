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
    @IBOutlet weak var quantityStepper: UIStepper!
    
    var selectedProduct: SelectedProduct!
    
    
    func updateTable (selProduct: SelectedProduct) {
        
        quantityStepper.addTarget(self, action: #selector(stepperValueChanges(_:)), for: .valueChanged)
        
        productName.text = selProduct.product.title
        productImage.image = UIImage(named: selProduct.product.imageName)
        productValue.text = "$\(selProduct.product.price)"
        productSize.text = "\(selProduct.size)"
        productQty.text = "\(selProduct.quantity)"
        
    }
    
    @objc func stepperValueChanges(_ sender: UIStepper) {
        productQty.text = String(format: "%.0f", sender.value)
        
        selectedProduct.quantity = Int(sender.value)
        selectedProduct.calculateTotal()
    }
    
    
}
