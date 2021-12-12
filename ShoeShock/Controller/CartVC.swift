//
//  CartVC.swift
//  ShoeShock
//
//  Created by Jadson on 11/12/21.
//

import UIKit

class CartVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cartProduct = Cart()
    
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var checkoutTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTable.dataSource = self
        cartTable.delegate = self
        
        tabBarItem.badgeValue = "\(cartProduct.products.count)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartProduct.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: K.cartCellIdentifier) as? CartCell {
            let productCart = DataService.instance.getProductsCart()[indexPath.row]
            cell.updateTable(selProduct: productCart)
            checkoutTotal.text = "\(cartProduct.getTotal())"
            return cell
        } else {
            return CartCell()
        }
    }
    

    
}
