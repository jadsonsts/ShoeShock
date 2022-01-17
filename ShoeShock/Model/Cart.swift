//
//  Cart.swift
//  ShoeShock
//
//  Created by Jadson on 12/12/21.
//

import Foundation

struct Cart {
    
    public var products = [SelectedProduct]()
    
    
    mutating func addProduct(product: Product) {
        let selectedProduct = SelectedProduct(product: product, quantity: 1, totalCost: 0.0 )
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
