//
//  ProductsVCViewController.swift
//  ShoeShock
//
//  Created by Jadson on 7/12/21.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productCollection: UICollectionView!
    @IBOutlet weak var headTitle: UILabel!
    
    private (set) public var products = [Product]()


    override func viewDidLoad() {
        super.viewDidLoad()

        productCollection.dataSource = self
        productCollection.delegate = self

        
    }
    
    func initProdutcs(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.categoryName)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.CollectionCellIdentifier, for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    

}
