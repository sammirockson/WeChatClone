//
//  ChatTableViewCell.swift
//  WechatClone
//
//  Created by Rockson on 11/08/2017.
//  Copyright © 2017 RockzAppStudio. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    let profileImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "personplaceholder")
        imageView.layer.cornerRadius = 5
        return imageView
        
    }()
    
    
    let timeStampLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10:15PM"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .right
        label.backgroundColor = .clear
        return label
        
    }()
    
    let usernameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Rockson"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.backgroundColor = .clear
        return label
        
    }()
    
    
    let lastMessageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Last message sent"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .lightGray
        label.backgroundColor = .clear
        return label
        
    }()
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setUpViews()
        
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setUpViews(){
        
        self.addSubview(profileImageView)
        self.addSubview(timeStampLabel)
        self.addSubview(usernameLabel)
        self.addSubview(lastMessageLabel)
        
        
        lastMessageLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        lastMessageLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        lastMessageLabel.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor).isActive = true
        lastMessageLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        usernameLabel.rightAnchor.constraint(equalTo: timeStampLabel.leftAnchor).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        usernameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        usernameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        
        
        timeStampLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        timeStampLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        timeStampLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 15).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        
    }

}
