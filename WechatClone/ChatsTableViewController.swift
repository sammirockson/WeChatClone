//
//  ChatsTableViewController.swift
//  WechatClone
//
//  Created by Rockson on 10/08/2017.
//  Copyright © 2017 RockzAppStudio. All rights reserved.
//

import UIKit

struct chatObject {
    
    var username: String
    var profileImageName: String
}



class ChatsTableViewController: UITableViewController {
    
    var friendsArray: [chatObject] = {
        let user1 = chatObject(username: "Barack Obama", profileImageName: "Obama")
        let user2 = chatObject(username: "Xi JingPin", profileImageName: "Xi")
        let user3 = chatObject(username: "Rockson", profileImageName: "Rockson")
        let user4 = chatObject(username: "Donald Trump", profileImageName: "Trump")
        let user5 = chatObject(username: "Trey Songz", profileImageName: "Trey")
        let user6 = chatObject(username: "French Montana", profileImageName: "Montana")
        return [user1,user2,user3,user4,user5,user6]
    }()
    
    
    private let reuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "WeChat"
        
        self.tableView.register(ChatTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        
   

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.friendsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ChatTableViewCell
        
        let friend = self.friendsArray[indexPath.row]
        cell.profileImageView.image = UIImage(named: friend.profileImageName)
        cell.usernameLabel.text = friend.username


        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
