//
//  ProductCell.swift
//  TableViewACollectionView
//
//  Created by brn.developers on 5/28/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateProductView(product:Product)
    {
        productImage.image = UIImage(named : product.imageName)
        productTitle.text = product.title
        productPrice.text = String(product.price)
    }
}
