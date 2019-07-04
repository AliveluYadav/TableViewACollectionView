//
//  ViewController.swift
//  TableViewACollectionView
//
//  Created by brn.developers on 5/28/18.
//  Copyright © 2018 brn.developers. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var itemTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTableView.delegate = self
        itemTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return DataService.instance.getItems().count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       if let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell") as? ItemCell
       {
            let item1 = DataService.instance.getItems()[indexPath.row]
        cell.updateView(item: item1)
        return cell
       }
        else
        {
            return ItemCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = DataService.instance.getItems()[indexPath.row]
        performSegue(withIdentifier: "product", sender: item)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductViewController
        {
            assert(sender as? Item != nil)
            productVC.initProducts(items: sender as! Item)
        }
    }
}

