//
//  Cart.swift
//  ShoeShock
//
//  Created by Jadson on 12/12/21.
//

import Foundation

class Cart {
    static let instance = Cart()
    
    var products = [SelectedProduct]()

    func addProduct(product: Product, size: String) {
         let selectedProduct = SelectedProduct(product: product, quantity: 1, size: size)
        products.append(selectedProduct)
    }
    
    func getTotal() -> Double {
        var total = 0.0
        for x in 0..<products.count {
            total += products[x].totalCost
        }
        return total
    }
}
