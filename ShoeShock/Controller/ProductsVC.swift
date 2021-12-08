//
//  ProductsVCViewController.swift
//  ShoeShock
//
//  Created by Jadson on 7/12/21.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productCollection: UICollectionView!

    
    private (set) public var products = [Product]()
    
    var selectedCategory: Category?


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
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.collectionCellIdentifier, for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        performSegue(withIdentifier: K.detailsProductSegue, sender: product)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ProductDetailVC, let product = sender as? Product {
            destinationVC.product = product
        }
            
    }
    

}
