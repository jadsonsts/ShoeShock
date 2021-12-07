//
//  CategoryCell.swift
//  ShoeShock
//
//  Created by Jadson on 6/12/21.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryName: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryName.text = category.categoryName
    }
}
