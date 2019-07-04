//
//  ProductViewController.swift
//  TableViewACollectionView
//
//  Created by brn.developers on 5/28/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell
        {
            let product = products[indexPath.row]
            cell.updateProductView(product: product)
            return cell
        }
        else
        {
        return ProductCell()
        }
    }
    
    @IBOutlet weak var productCollection: UICollectionView!
    
    public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        productCollection.delegate = self
        productCollection.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func  initProducts(items : Item)
    {
        products = DataService.instance.getProducts(forProductTitle: items.title )
    }

}
