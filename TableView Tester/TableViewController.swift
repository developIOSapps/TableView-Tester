//
//  TableViewController.swift
//  TableView Tester
//
//  Created by Steven Hertz on 2/4/20.
//  Copyright © 2020 DIA. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    let profiles = ["Profile-App-1Kiosk 123 Genius PRO - First Numbers and Counting Games~#2", "Profile-App-1Kiosk ABC - Magnetic Alphabet HD for Kids~#3", "Profile-App-1Kiosk ABC Genius PRO - Alphabet Letters Phonics Handwriting~#1", "Profile-App-1Kiosk Alphabet Sounds Word Study~#4", "Profile-App-1Kiosk Butterfly Math~#2", "Profile-App-1Kiosk Categories - Categorization Skill Development App~#0", "Profile-App-1Kiosk Count, Sort and Match~#5", "Profile-App-1Kiosk Counting Bear - Easily Learn How to Count~#4", "Profile-App-1Kiosk Counting Dots: Number Practice~#2", "Profile-App-1Kiosk Doodle Buddy Paint Draw App~#3", "Profile-App-1Kiosk Draw and Tell HD~#5", "Profile-App-1Kiosk Endless Alphabet~#3", "Profile-App-1Kiosk Feed the Monkey~#1"]

    var prf: [String] = []

    var prfSections = Array(repeating: Array<String>(), count: 6)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        profiles.forEach { (item) in
            let itemArr = item.components(separatedBy: "~#")
            prfSections[Int(itemArr[1])!].append(itemArr[0])
        }
        
        
        prf = profiles.map {
             String($0.suffix(1) + $0.replacingOccurrences(of: "Profile-App-1Kiosk", with: "").dropLast(1))
        }.sorted()
        
        
        
        
//        prf = profiles.map {
//            "-" + $0.replacingOccurrences(of: "Profile-App-1Kiosk", with: "")
//        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return prfSections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return prfSections[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        //cell.textLabel?.text = String(prf[indexPath.row].dropFirst(2))
        print(indexPath.section)
        print(indexPath.row)
        cell.textLabel?.text = prfSections[indexPath.section][indexPath.row]
        

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(section)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
