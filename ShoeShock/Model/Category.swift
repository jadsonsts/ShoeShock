//
//  Category.swift
//  ShoeShock
//
//  Created by Jadson on 6/12/21.
//

import Foundation

struct Category {
    
    private(set) public var imageName: String
    private(set) public var categoryName: String
    
    init (categoryName: String, imageName: String ) {
        self.imageName = imageName
        self.categoryName = categoryName
        
    }
}
