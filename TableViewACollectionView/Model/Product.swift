//
//  Product.swift
//  TableViewACollectionView
//
//  Created by brn.developers on 5/28/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import Foundation

struct Product {
    
    public var title : String
    public var imageName : String
    public var price :Int
    init(title:String,price:Int,imageName:String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}
