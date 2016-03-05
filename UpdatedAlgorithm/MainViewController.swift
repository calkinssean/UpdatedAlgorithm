//
//  MainViewController.swift
//  AlgorithmIntegration
//
//  Created by Henrichsen, Cody on 3/4/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
    
    var userInfo: String = ""

    @IBOutlet weak var caseNumberTextField: UITextField!
    
    @IBAction func recordButton(sender: UIButton) {
        
        userInfo = "\(caseNumberTextField.text!)"
        performSegueWithIdentifier("showFilesSegue", sender: self)
        
    }
    
  
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showFilesSegue" {
            let controller = segue.destinationViewController as! FilesTableViewController
            controller.userInfo = self.userInfo 
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

