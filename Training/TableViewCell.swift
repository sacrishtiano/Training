//
//  TableViewCell.swift
//  Training
//
//  Created by Sachin Khandelwal on 12/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var details: UITextView! {
        didSet {
            selectionStyle = .none
            details.isHidden = true
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if isDetailHidden, selected {
            showDetails()
        }
        else {
            hideDetails()
        }
    }
}

extension TableViewCell {
    var isDetailHidden: Bool {
        return details.isHidden
    }
    
    func showDetails() {
        details.isHidden = false
    }
    
    func hideDetails() {
        details.isHidden = true
    }
}
