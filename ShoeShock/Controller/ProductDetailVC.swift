//
//  ProductDetailVC.swift
//  ShoeShock
//
//  Created by Jadson on 8/12/21.
//

import UIKit

class ProductDetailVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productSize: UILabel!
    
    var product: Product!
    var imagesSet = [ImageSet]()
    var productCart = Cart()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productName.text = product.title
        productPrice.text = String(format: "$%.0f",product.price)
        sliderCollectionView.delegate = self
        sliderCollectionView.dataSource = self
        
        pageView.numberOfPages = imagesSet.count
        productSize.text = nil
        
    }

    
    func initImages(product: Product) {
        imagesSet = DataService.instance.getImageSet(forId: product.ID)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesSet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.comboImageSet, for: indexPath) as? ImageSetCell {
            let image = imagesSet[indexPath.row]
            cell.updateImages(images: image)
            return cell
        }
        return ImageSetCell()
    }
    
    
    @IBAction func sizePressed (_ sender: UIButton) {
        productSize.text = sender.currentTitle
    }
    
    @IBAction func addToCartPressed(_ sender: UIButton) {
        if productSize.text != nil {
            let alert = UIAlertController(title: "Awesome 🥳", message: "\(product.title) has been added to your cart" , preferredStyle: .alert)
                    
                    let action = UIAlertAction(title: "OK", style: .default) { (action) in
                        
//                        let product = product(
                        self.productCart.addProduct(product: self.product)
                        
                    }
                    alert.addAction(action)
                    present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Ops!", message: "Please select a size" , preferredStyle: .alert)
                    
                    let action = UIAlertAction(title: "OK", style: .default) { (action) in
                        
                    }
                    alert.addAction(action)
                    present(alert, animated: true, completion: nil)
        }
        
    }
    
    
}
