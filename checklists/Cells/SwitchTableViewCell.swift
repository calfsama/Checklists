//
//  SwitchTableViewCell.swift
//  checklists
//
//  Created by Tomiris Negmatova on 25/04/22.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    var onSwitchChanged: (() -> Void)?
    
    @IBOutlet weak var switchCondition: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func switchDidChange(_ sender: UISwitch) {
        print("Значение свитча: \(sender.isOn)")
        onSwitchChanged?()
    }
    
}
