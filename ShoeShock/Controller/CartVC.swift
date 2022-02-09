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
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        cartTable.dataSource = self
        cartTable.delegate = self
        cartTable.rowHeight = 110
        cartTable.reloadData()
        cartTable.allowsSelection = false
        
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
            didValueChange()
            cell.valueDelegate = self
            
            return cell
        } else {
            return CartCell()
        }
    }
    //MARK: - SLIDE TO DELETE
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = cartTable.isEditing
        cartTable.setEditing(tableViewEditingMode, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Cart.instance.products.remove(at: indexPath.row)
            cartTable.deleteRows(at: [indexPath], with: .automatic)
            didValueChange()
        }
    }
    
    //MARK: - Purchase
    
    @IBAction func purchaseButtonTapped(_ sender: UIButton) {
        if Cart.instance.products.count > 0 {
            let alert = UIAlertController(title: "Thanks for your Purchase", message: "Your product(s) is on its way. You'll receive more details via email" , preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default) { [self] (action) in
                
                Cart.instance.products.removeAll()
                cartTable.reloadData()
                didValueChange()
                alert.dismiss(animated: true, completion: nil)
                
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Ops!", message: "Your cart is empty, try adding products to your before purchasing" , preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default) { (action) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
}

extension CartVC: TotalCartDelegate {
    
    func didValueChange() {
        checkoutTotal.text = "\(Cart.instance.getTotal())"
    }
}


