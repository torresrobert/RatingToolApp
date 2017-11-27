//
//  TrendingFavoriteViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/21/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//


import UIKit
import CoreLocation
import MapKit

struct Theatres{
    var Name = ""
    var Rating = 0
    var Address = ""
    var NumOfRatings = 0
    var varname = ""
    var latitude = 0.0
    var longitude = 0.0
    var messages = ["","","",""]
}
//var mWalkMessages = ["Comfy seats, friendly staff, good prices, high quality sound system and screens.","Great people, great location, great experience!","Good food, good movies, and good service."]


var merchants_walk = Theatres(Name: "Merchants Walk",Rating: 20,Address:"1301 Johnson Ferry Rd Marietta, GA  30068 United States", NumOfRatings: 2,varname: "merchants_walk",latitude: 33.977916,longitude: -84.427445, messages: ["Comfy seats, friendly staff, good prices, high quality sound system and screens.","Great people, great location, great experience!","Good food, good movies, and good service.",""])
var amc_theatres = Theatres(Name: "AMC Theatres",Rating: 40,Address:"3101 Cobb Pkwy Atlanta, GA  30339 United States", NumOfRatings: 10,varname: "amc_theatres",latitude: 33.879080 ,longitude: -84.456397, messages: ["Comfy seats, friendly staff, good prices, high quality sound system and screens.","Great people, great location, great experience!","Good food, good movies, and good service.",""])
var regal_cinemas = Theatres(Name: "Regal Cinemas",Rating: -20,Address:"3950 1st St Alpharetta, GA  30009 United States", NumOfRatings: 3,varname: "regal_cinemas",latitude: 34.071921,longitude: -84.276280, messages: ["The menu, burgers are good, but Nachos done with potato chips?","The theater is beautiful.  That said, the problem is the staff. ","They do need some cleaning in the bathrooms, but the seats inside of the theater are cozy and spacious",""])
var ncg_cinema = Theatres(Name: "NCG Cinemas",Rating: -30,Address:"1050 Powder Springs Rd SW Marietta, GA  30064 United States", NumOfRatings: 8,varname: "ncg_cinema",latitude: 33.927641,longitude: -84.572033, messages: ["Could be a bit cheaper on their food and drinks but I love this place.","Seats recline and there is plenty of room for people to walk in the aisles.","It's never packed, has reclining seats, free popcorn refills, super clean",""])


struct Coffee{
    var Name = ""
    var Rating = 0
    var Address = ""
    var NumOfRatings = 0
    var varname = ""
    var latitude = 0.0
    var longitude = 0.0
    var messages = ["","","",""]
}

var cool_beans = Coffee(Name: "Cool Beans",Rating: 40,Address:"31 Mill St, Marietta, GA 30060 United States", NumOfRatings: 8,varname: "cool_beans",latitude: 33.953265,longitude: -84.550748, messages: ["Excellent selection of drinks and the staff were pleasant and knowledgable","They have great prices, and their coffee blows Starbucks' out of the water!","Good bean options if you want to bring some home with you at a decent price",""])

let geoCoder = CLGeocoder()

var tableView: UITableView!

let alert = UIAlertController(title: "AlertController Tutorial",
                              message: "Submit something",
                              preferredStyle: .alert)
// Submit button
let submitAction = UIAlertAction(title: "Submit", style: .default, handler: { (action) -> Void in
    // Get 1st TextField's text
    let textField = alert.textFields![0]
    //print(textField.text!)
    if(merchants_walk.messages[3]==""){
    merchants_walk.messages[3].append(textField.text!)
    //URLCache.shared.removeAllCachedResponses()
    }
    
})

// Cancel button
let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })




class TrendingFavoriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBAction func addRatingPressed(_ sender: Any) {
        //merchants walk
        if (merchants_walk.messages[3]==""){
        // Add 1 textField and customize it
        alert.addTextField { (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Type something here"
            textField.clearButtonMode = .whileEditing
        }
        // Add action buttons and present the Alert
        alert.addAction(submitAction)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        }
        else if (amc_theatres.messages[3]==""){
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
        else if (regal_cinemas.messages[3]==""){
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
        else if (ncg_cinema.messages[3]==""){
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
        
        
        else{
            createAlert(title: "Oops!", message: "Looks like you've already commented. Come back tomorrow!")
        }
        
    }
    @IBOutlet var tableView: UITableView!
   @IBOutlet weak var AddRating: UIButton!
   @IBOutlet weak var Back: UIButton!
   @IBOutlet weak var AvgRating: UIImageView!
    @IBOutlet weak var ImageOfCurrLoc: UIImageView!
    @IBOutlet var RecComms: UITableView!
    @IBOutlet weak var CurrentLoc: UILabel!
    @IBOutlet var RatingNum: UILabel!
    //@IBOutlet var cell: UITableViewCell!
    
    @IBAction func goToLoc(_ sender: Any) {
        ///get directions to merchants walk
        if (theatres[myTheatIndex]==(merchants_walk.varname)){
        let coordinate = CLLocationCoordinate2DMake(merchants_walk.latitude, merchants_walk.longitude)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = merchants_walk.Name
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        ///get directions to amc
        }else if (theatres[myTheatIndex]==(amc_theatres.varname)) {
            let coordinate = CLLocationCoordinate2DMake(amc_theatres.latitude, amc_theatres.longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = amc_theatres.Name
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
         ///get directions to regal
        }else if (theatres[myTheatIndex]==(regal_cinemas.varname)) {
            let coordinate = CLLocationCoordinate2DMake(regal_cinemas.latitude, regal_cinemas.longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = regal_cinemas.Name
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
         ///get directions to ncg
        }else if (theatres[myTheatIndex]==(ncg_cinema.varname)) {
            let coordinate = CLLocationCoordinate2DMake(ncg_cinema.latitude, ncg_cinema.longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = ncg_cinema.Name
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        }
    }
    
    @IBOutlet var goToLocBttn: UIButton!
    
    
    @IBOutlet var MapOfCurrLoc: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        if (theatres[myTheatIndex]==(merchants_walk.varname)){
            CurrentLoc.text = merchants_walk.Name
            ImageOfCurrLoc.image = UIImage(named: merchants_walk.varname)
            RatingNum.text = String(merchants_walk.Rating)
            
            //avgerage rating/////////
            if (merchants_walk.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            //////////////////////////
            
            //current location handler/////////////////////////
            let geocoder = CLGeocoder()
            let address = merchants_walk.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                   // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                  
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = merchants_walk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                
                   
                    
                
                }
            })
            ////////////////////////////////////////////////////
            
            
            
        }else if (theatres[myTheatIndex]==(amc_theatres.varname)){
            CurrentLoc.text = amc_theatres.Name
            ImageOfCurrLoc.image = UIImage(named: amc_theatres.varname)
            RatingNum.text = String(amc_theatres.Rating)
            
            //avgerage rating/////////
            if (amc_theatres.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            ////////////////////////
            
            
        }else if (theatres[myTheatIndex]==(regal_cinemas.varname)){
            CurrentLoc.text = regal_cinemas.Name
            ImageOfCurrLoc.image = UIImage(named: regal_cinemas.varname)
            RatingNum.text = String(regal_cinemas.Rating)
            
            //avgerage rating/////////
            if (regal_cinemas.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            ////////////////////////
            
            
        }else if (theatres[myTheatIndex]==(ncg_cinema.varname)){
            CurrentLoc.text = ncg_cinema.Name
            ImageOfCurrLoc.image = UIImage(named: ncg_cinema.varname)
            RatingNum.text = String(ncg_cinema.Rating)
            
            
            //avgerage rating/////////
            if (ncg_cinema.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            ////////////////////////
            
            
            
            
        }
        
       AddRating.layer.cornerRadius=10
       goToLocBttn.layer.cornerRadius=10
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                if (theatres[myTheatIndex]==(merchants_walk.varname)){
                    return merchants_walk.messages.count;
                    ///get num of messages for amc
                }else if (theatres[myTheatIndex]==(amc_theatres.varname)) {
                    return amc_theatres.messages.count;
                    ///get num of messages for regal
                }else if (theatres[myTheatIndex]==(regal_cinemas.varname)) {
                    return regal_cinemas.messages.count;
                    ///get num of messages for ncg
                }else if (theatres[myTheatIndex]==(ncg_cinema.varname)) {
                    return ncg_cinema.messages.count;
                }else{
                    return 0
                    
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMess", for: indexPath)
                if (theatres[myTheatIndex]==(merchants_walk.varname)){
        cell.textLabel!.text = merchants_walk.messages[indexPath.row]
        return (cell)
        ///get num of messages for amc
               }else if (theatres[myTheatIndex]==(amc_theatres.varname)) {
                    cell.textLabel?.text = amc_theatres.messages[indexPath.row]
                    return cell
                    //return cellMessages
                    ///get num of messages for regal
                }else if (theatres[myTheatIndex]==(regal_cinemas.varname)) {
                    cell.textLabel?.text = regal_cinemas.messages[indexPath.row]
                    return cell
                    //return cellMessages
                    ///get num of messages for ncg
                }else if (theatres[myTheatIndex]==(ncg_cinema.varname)) {
                    cell.textLabel?.text = ncg_cinema.messages[indexPath.row]
                    return cell
                    //return cellMessages
                }else{
                    return cell
                }
        
        
    }
    
    func createAlert (title:String!, message:String!){
        let alert = UIAlertController(title: title,message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok",style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
}


