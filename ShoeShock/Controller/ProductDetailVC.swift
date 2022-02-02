//
//  ProductDetailVC.swift
//  ShoeShock
//
//  Created by Jadson on 8/12/21.
//

import UIKit

class ProductDetailVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
        productPrice.text = String(format: "$%.0f",product.price)
        sliderCollectionView.delegate = self
        sliderCollectionView.dataSource = self
        pageView.numberOfPages = imagesSet.count
        pageView.addTarget(self, action: #selector(pageControlDidChange(_:)), for: .valueChanged)
        
    }
    
    @objc private func pageControlDidChange(_ sender: UIPageControl){
        let current = sender.currentPage
        sliderCollectionView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.size.width,
                                                      y: 0), animated: true)
        
    }
    
    func initImages(product: Product) {
        imagesSet = DataService.instance.getImageSet(forId: product.ID)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesSet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.comboImageSet, for: indexPath) as? ProductDetailCell {
            let image = imagesSet[indexPath.row]
            cell.updateImages(images: image)
            return cell
        }
        return ProductDetailCell()
    }
    
    //SET THE COLLECTION'S SIZE TO IT'S FRAME
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    @IBAction func sizePressed (_ sender: UIButton) {
        productSize.text = sender.currentTitle
    }
    
    @IBAction func addToCartPressed(_ sender: UIButton) {
        if productSize.text != nil {
            let alert = UIAlertController(title: "Awesome 🥳", message: "\(product.title) has been added to your cart" , preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default) { [self] (action) in
                
                Cart.instance.addProduct(product: product, size: productSize.text ?? "7")
                alert.dismiss(animated: true, completion: nil)
                
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Ops!", message: "Please select a size" , preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default) { (action) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
    }
}
extension ProductDetailVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageView.currentPage = Int (floorf(Float(sliderCollectionView.contentOffset.x) / Float((sliderCollectionView.frame.size.width))))
        
    }
}
