//
//  DataService.swift
//  TableViewACollectionView
//
//  Created by brn.developers on 5/28/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import Foundation

class DataService
{
    static let instance = DataService()
    
    private let items = [
    
        Item(title: "SHIRTS", imageName: "shirts.png"),
        Item(title: "HATS", imageName: "hats.png"),
        Item(title: "HOODIES", imageName: "hoodies.png"),
        Item(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    private let shirts = [
        
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "shirt01.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "shirt02.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "shirt03.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "shirt04.png")
    ]
    
    
    private let hats = [
    
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hat01.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hat02.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hat03.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hat04.png")
    ]
    
    private let hoodies = [
        
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hoodie01.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hoodie02.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hoodie03.png"),
        Product(title: "Developer Logo T-Shirt Brand", price: 250, imageName: "hoodie04.png")
    ]
    
    private let digital = [Product]()
    
    
    func getProducts(forProductTitle title : String) -> [Product]
    {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
        
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigital() -> [Product] {
        return digital
    }
    func getItems() -> [Item] {
        
        return items
    }
}
