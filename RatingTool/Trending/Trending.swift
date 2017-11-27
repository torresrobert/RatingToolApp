//
//  Trending.swift
//  RatingTool
//
//  Created by Robert Torres on 11/27/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit
//favorites
//var fav1 = "Theatres"
//var fav2 = "Coffee"
//var fav3 = "Restaurants"
//var fav4 = "Parks and Rec"
//var theatres = ["merchants_walk","amc_theatres","regal_cinemas","ncg_cinema"]
//var message = ["Hey, it was good seeing you today.","I just saw your last post and totally agree.","No way!"]
//var myTheatIndex = 0

var tableView2: UITableView!

class Trending: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //@IBOutlet weak var favorite: UILabel!
       // @IBOutlet var tableView2: UITableView!
    @IBOutlet var tableView2: UITableView!
    
    @IBOutlet var currFav: UILabel!
    
    
    @IBAction func setCurrToTheatre(_ sender: Any) {
        currFav.text = fav1
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return theatres.count;
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
            
            // cell.imageView!.image = UIImage(named: "merchants_walk")
            cell.imageView!.image = UIImage(named: theatres[indexPath.row])
            
            //cell.textLabel?.text = theatres[indexPath.row]
            
            //currFav.text = fav1;
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myTheatIndex = indexPath.row
            performSegue(withIdentifier: "sequeFromTrend", sender: self)
        }
    }
    
    
    @IBAction func setCurrToCoffee(_ sender: Any) {
        currFav.text = fav2
        
    }
    

//    @IBAction func setCurrToCoffee(_ sender: Any) {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return theatres.count;
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
//
//            // cell.imageView!.image = UIImage(named: "merchants_walk")
//            cell.imageView!.image = UIImage(named: theatres[indexPath.row])
//
//            //cell.textLabel?.text = theatres[indexPath.row]
//
//            currFav.text = fav2;
//
//            return cell
//        }
//
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            myTheatIndex = indexPath.row
//            performSegue(withIdentifier: "sequeFromTrend", sender: self)
//        }
//    }
//
//    @IBAction func setCurrToRestaurants(_ sender: Any) {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return theatres.count;
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
//
//            // cell.imageView!.image = UIImage(named: "merchants_walk")
//            cell.imageView!.image = UIImage(named: theatres[indexPath.row])
//
//            //cell.textLabel?.text = theatres[indexPath.row]
//
//            currFav.text = fav3;
//
//            return cell
//        }
//
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            myTheatIndex = indexPath.row
//            performSegue(withIdentifier: "sequeFromTrend", sender: self)
//        }
//    }
//
//    @IBAction func setCurrToParks(_ sender: Any) {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return theatres.count;
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
//
//            // cell.imageView!.image = UIImage(named: "merchants_walk")
//            cell.imageView!.image = UIImage(named: theatres[indexPath.row])
//
//            //cell.textLabel?.text = theatres[indexPath.row]
//
//            currFav.text = fav4;
//
//            return cell
//        }
//
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            myTheatIndex = indexPath.row
//            performSegue(withIdentifier: "sequeFromTrend", sender: self)
//        }
//    }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theatres.count;
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
        
        // cell.imageView!.image = UIImage(named: "merchants_walk")
        cell.imageView!.image = UIImage(named: theatres[indexPath.row])
        
        //cell.textLabel?.text = theatres[indexPath.row]
        
        currFav.text = fav1;
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTheatIndex = indexPath.row
        performSegue(withIdentifier: "sequeFromTrend", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView2)
        tableView2.delegate = self
        tableView2.dataSource = self
    }
    
    
}

