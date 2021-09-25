//
//  StudentTableViewCell.swift
//  CameraApp2
//
//  Created by Robin George on 23/09/21.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var studentNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
        }
    // Configure the view for the selected state
    func cellConfig(student:StudentEntity){
        studentNameLabel.text = student.name
        usernameLabel.text = student.username
        passwordLabel.text = student.password
        
    }

}
