//
//  CartVC.swift
//  ShoeShock
//
//  Created by Jadson on 11/12/21.
//

import UIKit

class CartVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var cartProduct = [SelectedProduct]()
    
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var checkoutTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTable.dataSource = self
        cartTable.delegate = self
        
        cartTable.reloadData()
        cartTable.rowHeight = 110
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
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
            return cell
        } else {
            return CartCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
