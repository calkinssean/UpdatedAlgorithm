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
        getCourtSoundURL()
        getDocumentsDirectory()
        performSegueWithIdentifier("showFilesSegue", sender: self)
        
    }
    
    func getDocumentsDirectory() -> NSString {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as [String]
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
    
    func getCourtSoundURL() -> NSURL
    {
        
        
        let audioFilename = getDocumentsDirectory().stringByAppendingPathComponent("court audio-"+userInfo)
        let audioURL = NSURL(fileURLWithPath: audioFilename)
        
        return audioURL
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

