//
//  ViewController.swift
//  PresentModally
//
//  Created by Rudd Taylor on 1/14/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("View loaded!")
    }
    
    override func viewDidAppear(animated: Bool) {
        print("view appeared! Woohoo!")
    }
    
    @IBAction func didTapLogin(sender: AnyObject) {
        if emailField.text?.characters.count > 0 {
//            performSegueWithIdentifier("thanks", sender: nil)
            var storyboard = UIStoryboard(name: "Main", bundle: nil)
            var thanksVC = storyboard.instantiateViewControllerWithIdentifier("Thanks")
            navigationController?.pushViewController(thanksVC, animated: true)
            
        } else {
            var alert = UIAlertView(title: "No Input!", message: "You did not put in any characters...", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }
}

