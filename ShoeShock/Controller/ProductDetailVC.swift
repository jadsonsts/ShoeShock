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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productName.text = product.title
        productPrice.text = product.price
        sliderCollectionView.delegate = self
        sliderCollectionView.dataSource = self
        
        pageView.numberOfPages = imagesSet.count
        //pageView.currentPage = imagesSet.startIndex
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
        
    }
    
    
}
