//
//  ProfileTabViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/20/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit

var myname = "Robert"

class ProfileTabViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profile_pic: UIImageView!
    @IBOutlet weak var view_requests: UIButton!
    @IBOutlet weak var manage_favs: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view_requests.layer.cornerRadius = 10;
        manage_favs.layer.cornerRadius = 10;
        name.text = myname
        profile_pic.image = UIImage(named: "You")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
