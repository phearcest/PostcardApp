//
//  ViewController.swift
//  Postcard
//
//  Created by Ryan McAndrews on 9/15/14.
//  Copyright (c) 2014 Ryan McAndrews. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //Change message label and clear message text box
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        
        //Change name label and clear name text box
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        //Chine button title
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}