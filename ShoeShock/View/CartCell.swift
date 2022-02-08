//
//  CartCell.swift
//  ShoeShock
//
//  Created by Jadson on 12/12/21.
//

import UIKit

protocol TotalCartDelegate {
    func didValueChange()
}

class CartCell: UITableViewCell {
    
    var valueDelegate: TotalCartDelegate!
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productValue: UILabel!
    @IBOutlet weak var productSize: UILabel!
    @IBOutlet weak var productQty: UILabel!
    @IBOutlet weak var quantityStepper: UIStepper!
    
    var selectedProduct: SelectedProduct!
    var cartVC: CartVC!
    
    func updateTable (selProduct: SelectedProduct) {
        
        quantityStepper.addTarget(self, action: #selector(stepperValueChanges(_:)), for: .valueChanged)
        
        productName.text = selProduct.product.title
        productImage.image = UIImage(named: selProduct.product.imageName)
        productValue.text = "$\(selProduct.product.price * Double(selProduct.quantity))"
        productSize.text = "\(selProduct.size)"
        productQty.text = "\(selProduct.quantity)"
        self.selectedProduct = selProduct
        selectedProduct.calculateTotal()
    }
    
    @objc func stepperValueChanges(_ sender: UIStepper) {
        productQty.text = String(format: "%.0f", sender.value)
        selectedProduct.quantity = Int(sender.value)
        
        selectedProduct.calculateTotal()
        productValue.text = "$\(selectedProduct.totalCost)"
        
        valueDelegate.didValueChange()

    }
}
