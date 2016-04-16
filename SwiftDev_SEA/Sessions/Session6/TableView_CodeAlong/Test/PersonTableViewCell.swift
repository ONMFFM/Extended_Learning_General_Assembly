//
//  PersonTableViewCell.swift
//  Test
//
//  Created by Owen Pierce on 12/22/15.
//  Copyright © 2015 GA. All rights reserved.
//

import UIKit

// This is a view class
class PersonTableViewCell: UITableViewCell {

    @IBOutlet var personImage: UIImageView!
    @IBOutlet var personName: UILabel!
    
    var cellPerson: Person? {
        didSet {
            personImage.image = cellPerson?.image
            personName.text = cellPerson?.name
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
