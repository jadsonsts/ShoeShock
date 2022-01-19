//
//  Product.swift
//  ShoeShock
//
//  Created by Jadson on 6/12/21.
//

import Foundation


struct Product {
    
    private (set) public var ID: Int
    private (set) public var title: String
    private (set) public var price: Double
    private (set) public var imageName: String
    
    
    init(ID: Int, title: String, price: Double, imageName: String) {
        self.ID = ID
        self.title = title
        self.price = price
        self.imageName = imageName
        
    }
}
