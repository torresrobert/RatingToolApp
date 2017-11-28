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
    
    var refreshController: UIRefreshControl?

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath as IndexPath)
        
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
        refreshController = UIRefreshControl()
        tableView2.delegate = self
        tableView2.dataSource = self
        

    }
    override func viewWillAppear(_ animated: Bool) {
        tableView2.reloadData()
        //tableView2.refreshControl = refreshController
        tableView2.delegate = self
        tableView2.dataSource = self
        view.addSubview(tableView2)
        refreshController?.endRefreshing()
    }
    
    
    @IBAction func switch2Theatres(_ sender: Any) {

        
        
        currFav.text = fav1
       
        myTheatIndex=0
       
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return theatres.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath as IndexPath)
             cell.imageView!.image = UIImage(named: theatres[indexPath.row])
        
           
            return cell
            
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myTheatIndex = indexPath.row
            performSegue(withIdentifier: "sequeFromTrend", sender: self)
        }
        
        
        }
}

