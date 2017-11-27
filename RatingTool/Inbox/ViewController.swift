//
//  ViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/19/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//


import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lastMessage: UITextView!
    
    @IBOutlet weak var backBttn: UIButton!
    @IBOutlet weak var descriptionView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel.text = pets[myIndex]
        //descriptionView.text = message[myIndex]
        lastMessage.text = message[myIndex]
        imageView.image = UIImage(named: pets[myIndex])
        lastMessage.layer.cornerRadius=10
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


