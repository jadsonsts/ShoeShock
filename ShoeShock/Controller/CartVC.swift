//
//  CartVC.swift
//  ShoeShock
//
//  Created by Jadson on 11/12/21.
//

import UIKit

class CartVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cartProduct = [SelectedProduct]()
    
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var checkoutTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTable.dataSource = self
        cartTable.delegate = self
        
        tabBarItem.badgeValue = "\(cartProduct.count)"
        cartTable.reloadData()
        
        cartTable.rowHeight = 110
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        cartTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getProductsCart().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: K.cartCellIdentifier) as? CartCell {
            let productCart = DataService.instance.getProductsCart()[indexPath.row]
            cell.updateTable(selProduct: productCart)
//            checkoutTotal.text = "\(cartProduct.getTotal())"
            return cell
        } else {
            return CartCell()
        }
    }
    

    
}
