//
//  ChecklistItemTableViewCell.swift
//  checklists
//
//  Created by Tomiris Negmatova on 22/04/22.
//

import UIKit

class ChecklistItemTableViewCell: UITableViewCell {

    
    @IBOutlet weak var checkView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
