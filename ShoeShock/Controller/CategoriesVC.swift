//
//  ViewController.swift
//  ShoeShock
//
//  Created by Jadson on 6/12/21.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var categoriesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesTable.dataSource = self
        categoriesTable.delegate = self
        categoriesTable.rowHeight = 150
        navigationItem.title = K.appName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: K.tableCellIdentifier) as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: K.registerSegue, sender: category)
        categoriesTable.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)
            productsVC.initProdutcs(category: sender as! Category)
        }
    }


}

