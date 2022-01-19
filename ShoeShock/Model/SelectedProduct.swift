//
//  SelectedProduct.swift
//  ShoeShock
//
//  Created by Jadson on 12/12/21.
//

import Foundation


struct SelectedProduct {
     var product: Product
     var quantity = 0
     var totalCost = 0.0
    
    mutating func calculateTotal() {
        totalCost = product.price * Double(quantity)
    }
}
