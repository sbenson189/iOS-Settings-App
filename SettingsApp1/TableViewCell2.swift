//
//  TableViewCell2.swift
//  SettingsApp2
//
//  Created by Scott Benson on 4/9/21.
//

import UIKit

class TableViewCell2: UITableViewCell {
    @IBOutlet weak var sectionTwoLabel: UILabel!
    
    @IBOutlet weak var sectionTwoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
