//
//  ViewController.swift
//  ImagePickerDemo
//
//  Created by Owen Pierce on 2/11/16.
//  Copyright © 2016 Owen Pierce. All rights reserved.
//

import UIKit
import MessageUI
import Contacts
import ContactsUI

class ViewController: UIViewController {

    var imagePicker = UIImagePickerController()
    var messageController = MFMessageComposeViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendText() {
        presentViewController(messageController, animated: true, completion: nil)
    }
    
    @IBAction func getPicture() {
        
    }
}

extension ViewController: UIImagePickerControllerDelegate {
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        // select image
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // user cancelled
    }
}

extension ViewController: MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        // we don't really care right now
        if result == MessageComposeResultCancelled {
            print("")
            
        } else if result == MessageComposeResultFailed {
            
        } else if result == MessageComposeResultSent {
            
        }
    }
}

