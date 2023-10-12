//
//  TableViewCell.swift
//  Training
//
//  Created by Sachin Khandelwal on 12/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var myImage : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
