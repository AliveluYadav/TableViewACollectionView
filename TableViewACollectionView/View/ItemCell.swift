//
//  ItemCell.swift
//  TableViewACollectionView
//
//  Created by brn.developers on 5/28/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateView(item:Item)
    {
        itemImage.image = UIImage(named: item.imageName)
        itemTitle.text = item.title
    }
}
