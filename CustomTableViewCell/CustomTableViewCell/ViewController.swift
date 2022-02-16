//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Xingfu Du on 2/7/22.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let arr = ["food1", "food2", "food3", "food4", "food5", "food6","food7", "food8", "food9", "food10"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        cell.imgView.image = UIImage(named: arr[indexPath.row])
        cell.lblCell.text = arr[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }


}


