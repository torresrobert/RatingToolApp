//
//  FirstViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/9/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit
//favorites
var fav1 = "Theatres"
var fav2 = "Coffee"
var fav3 = "Restaurants"
var fav4 = "Parks and Rec"

struct Users{
    var email = ""
    var name = ""
    var password = ""
}
var robert = Users(email: "robert@ratingtool.com",name: "Robert",password: "Panda0")

//var robert = Users(email: "robert@ratingtool.com",name: "Robert",password = "Panda0")

class FirstViewController: UIViewController {
    
    @IBOutlet var input_email: UITextField!
    
    @IBOutlet var input_password: UITextField!
    
    @IBOutlet var login: UIButton!
    
    @IBAction func attempt_login_email(_ sender: Any) {
        if(robert.email==input_email.text&&robert.password==input_password.text){
            performSegue(withIdentifier: "seque", sender: self)
        }
        else{
           // EXIT_FAILURE
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        login.layer.cornerRadius=10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

