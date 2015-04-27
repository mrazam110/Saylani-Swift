//
//  mycell.swift
//  NIBDEMO
//
//  Created by MT-54 on 26/04/2015.
//  Copyright (c) 2015 Saylani. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func clickButton(sender: AnyObject) {
        myLabel.text = "Saylani"
    }
}







