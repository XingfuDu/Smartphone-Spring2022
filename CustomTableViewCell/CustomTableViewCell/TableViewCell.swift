//
//  TableViewCell.swift
//  CustomTableViewCell
//
//  Created by Xingfu Du on 2/7/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblCell: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
