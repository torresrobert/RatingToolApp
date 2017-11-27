//
//  TableViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/10/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit

var pets = ["Bella","Jason","Emory"]
var message = ["Hey, it was good seeing you today.","I just saw your last post and totally agree.","No way!"]
var myIndex = 0

class TableViewController: UITableViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = pets[indexPath.row]
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "seque", sender: self)
    }

}
