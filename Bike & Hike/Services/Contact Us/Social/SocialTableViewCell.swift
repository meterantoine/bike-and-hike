//
//  SocialTableViewCell.swift
//  Bike & Hike
//
//  Created by Antoine Perry on 9/11/19.
//  Copyright © 2019 Antoine Perry. All rights reserved.
//

import UIKit

class SocialTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
