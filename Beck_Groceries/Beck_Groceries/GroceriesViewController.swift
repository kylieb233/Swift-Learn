//
//  GroceriesViewController.swift
//  Beck_Groceries
//
//  Created by Kylie beck on 12/6/24.
//

import UIKit

class GroceriesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allCategories.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = itemCollectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath)
        return cell
        
    }
    
    var items: [Item] = []
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    @IBOutlet weak var itemExpireLabel: UILabel!
    
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    
    @IBOutlet weak var itemQuantityLabel: UILabel!
    
    @IBOutlet weak var itemOriginLabel: UILabel!
    
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    func assignGroceryDetails(for item: Item){
        itemNameLabel.text = "Product Name: \(String(describing: item.itemName))"
        itemPriceLabel.text = "Price: $\(item.itemPrice ?? 0.0)"
        itemExpireLabel.text = "Expires on: \(String(describing: item.itemExpiry))"
        itemDescriptionLabel.text = "Description: \(String(describing: item.itemDescription))"
        itemQuantityLabel.text = "Quantity: \(item.itemQuantity ?? 0)"
        itemOriginLabel.text = "Origin: \(String(describing: item.itemOrigin))"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        itemCollectionView.delegate = self
        itemCollectionView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
