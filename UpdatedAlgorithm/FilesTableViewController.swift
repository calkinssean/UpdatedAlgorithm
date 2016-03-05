//
//  FilesTableViewController.swift
//  AlgorithmIntegration
//
//  Created by Mitchell Phillips on 3/4/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit
import CoreData

class FilesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate {
    
    var userInfo = ""

    var arrayOfFiles = [AudioFile]()

    @IBOutlet weak var fileTableView: UITableView!
    @IBAction func stopButton(sender: UIButton) {
        
    }
    @IBAction func deleteButton(sender: UIButton) {
        
        arrayOfFiles.removeAll()
     
        fileTableView.reloadData()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        navigationItem.title = "\(userInfo)"
        
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let a = arrayOfFiles[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FileCell", forIndexPath: indexPath) as! FilesTableViewCell
        cell.fileNameLabel.text = a.title
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfFiles.count
    }

}
