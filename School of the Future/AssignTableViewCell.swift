//
//  AssignTableViewCell.swift
//  School of the Future
//
//  Created by Dale M Keith on 10/18/15.
//  Copyright © 2015 Honors 3034. All rights reserved.
//

import UIKit

class AssignTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    //@IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
