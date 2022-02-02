//
//  SelectedProduct.swift
//  ShoeShock
//
//  Created by Jadson on 12/12/21.
//

import Foundation


class SelectedProduct {
     var product: Product
     var quantity: Int
     var totalCost = 0.0
     var size: String
    
    init(product: Product, quantity: Int, size: String) {
        self.product = product
        self.quantity = quantity
        self.size = size
    }
    
    func calculateTotal() {
        totalCost = product.price * Double(quantity)
    }
}
