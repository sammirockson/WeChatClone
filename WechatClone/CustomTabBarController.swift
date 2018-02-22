//
//  CustomTabBarController.swift
//  WechatClone
//
//  Created by Rockson on 10/08/2017.
//  Copyright © 2017 RockzAppStudio. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chatVC = ChatsTableViewController()
        chatVC.tabBarItem.title = "Chats"
        chatVC.tabBarItem.image = #imageLiteral(resourceName: "chat")
        chatVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "chatSelected")
        let chatNav = UINavigationController(rootViewController: chatVC)
        
        let contactVC = ContactTableViewController()
        contactVC.tabBarItem.title = "Contacts"
        contactVC.tabBarItem.image = #imageLiteral(resourceName: "contact")
        contactVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "contactSelected")
        let contactNav = UINavigationController(rootViewController: contactVC)
        
        let discoverVC = DiscoverTableViewController()
        discoverVC.tabBarItem.title = "Discover"
        discoverVC.tabBarItem.image = #imageLiteral(resourceName: "Discover")
        discoverVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "DiscoverSelected")
        let discoverNav = UINavigationController(rootViewController: discoverVC)
        
        let MeVC = MeTableViewController()
        MeVC.tabBarItem.title = "Me"
        MeVC.tabBarItem.image = #imageLiteral(resourceName: "MeIcon")
        MeVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "MeSelectedIcon")
        let MeNav = UINavigationController(rootViewController: MeVC)
        
        self.viewControllers = [chatNav, contactNav, discoverNav, MeNav]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
