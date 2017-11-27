//
//  Trending_Theatres.swift
//  RatingTool
//
//  Created by Robert Torres on 11/20/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit
//favorites
//var fav1 = "Theatres"
//var fav2 = "Coffee"
//var fav3 = "Restaurants"
//var fav4 = "Parks and Rec"
var theatres = ["merchants_walk","amc_theatres","regal_cinemas","ncg_cinema"]
//var message = ["Hey, it was good seeing you today.","I just saw your last post and totally agree.","No way!"]
var myTheatIndex = 0



class Trending_Theatres: UITableViewController {
    @IBOutlet weak var favorite: UILabel!
    
    
   
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theatres.count;
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
       // cell.imageView!.image = UIImage(named: "merchants_walk")
        cell.imageView!.image = UIImage(named: theatres[indexPath.row])
       
        //cell.textLabel?.text = theatres[indexPath.row]
        
        favorite.text = fav1;
        
        return cell
    }
    
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myTheatIndex = indexPath.row
        performSegue(withIdentifier: "seque2theat", sender: self)
    }
    
    
}
