//
//  ProjectTableViewCell.swift
//  TeamworkTest
//
//  Created by Rafael Montilla on 5/29/18.
//  Copyright © 2018 Teamwork. All rights reserved.
//

import UIKit

class ProjectTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(project: Project) {
        self.nameLabel.text = project.name;
    }
    
}
