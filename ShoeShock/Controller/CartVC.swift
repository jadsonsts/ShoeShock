//
//  CartVC.swift
//  ShoeShock
//
//  Created by Jadson on 11/12/21.
//

import UIKit

class CartVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var checkoutTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTable.dataSource = self
        cartTable.delegate = self
        cartTable.rowHeight = 110
        cartTable.reloadData()
        cartTable.allowsSelection = false
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //checkoutTotal.text = "\(Cart.instance.getTotal())"
        cartTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { 
        return Cart.instance.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: K.cartCellIdentifier) as? CartCell {
            let productCart = Cart.instance.products[indexPath.row]
            cell.updateTable(selProduct: productCart)
            checkoutTotal.text = "\(Cart.instance.getTotal())"
            cell.valueDelegate = self
            return cell
        } else {
            return CartCell()
        }
    }
}

extension CartVC: TotalCartDelegate {
    
    func didValueChange() {
        checkoutTotal.text = "\(Cart.instance.getTotal())"
    }
}


