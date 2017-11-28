//
//  Trending.swift
//  RatingTool
//
//  Created by Robert Torres on 11/27/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit


var tableView2: UITableView!


class Trending: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var refreshControl: UIRefreshControl = UIRefreshControl()

    @IBOutlet var tableView2: UITableView!
    
    @IBOutlet var currFav: UILabel!
    

    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffee.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
        
        // cell.imageView!.image = UIImage(named: "merchants_walk")
        cell.imageView!.image = UIImage(named: coffee[indexPath.row])
        
        //cell.textLabel?.text = theatres[indexPath.row]
        
        //currFav.text = fav2;
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myCoffeeIndex = indexPath.row
        performSegue(withIdentifier: "sequeFromTrend", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currFav.text = fav2
       // view.addSubview(tableView2)
        tableView2.delegate = self
        tableView2.dataSource = self
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView2.reloadData()
    }
    
    
    
    @IBAction func switch2Theatres(_ sender: Any) {
        currFav.text = fav1
        func tableView(_ tableView: UITableView, numberOfRowsInSection: Int)->Int{
             self.tableView2.reloadData()
            return theatres.count
             //self.tableView2.reloadData()
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
             cell.imageView!.image = UIImage(named: coffee[indexPath.row])
             self.tableView2.reloadData()
            return cell
            
        }
        
        self.tableView2.reloadData()
    
}
}

