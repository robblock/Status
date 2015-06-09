//
//  ViewController.swift
//  Status
//
//  Created by Rob Block on 6/8/15.
//  Copyright (c) 2015 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //Can be an array of updates or can be nil
    var updates: [Update]?
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding the tableView brings in the tableView dataSource
        tableView.dataSource = self
        
        //TODO: Sample data, remove when getting real data
        
        //This is creating a new array that will populate the cell
        updates = [Update]()
        
        var user = User()
        user.username = "Robert"
        user.name = "Robert Block"
        user.bio = "Hungry and Tired"
        user.city = "San Francisco"
        user.link = "http://somewebsite.com"
        
        //Creating and populating 10 cells
        for var i = 0; i < 10; i++ {
        var update = Update()
        update.date = NSDate()
        //The i will print out the cell number
        update.text = "Hello, World \(i)"
        update.user = user
        
        updates?.append(update)
        }
    }
    
    //MARK: - UITableViewDataSource
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //What is happening is that it will run the if let statement, and then get to return updateCount, if updateCounts doesnt not exist, then it will return 0
            if let updatesCount = updates?.count {
                return updatesCount
            }
            //This is short circiting the function
            return 0
            
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //TODO: Make this cell reusable
       var cell =  NSBundle.mainBundle().loadNibNamed("UpdateTableViewCell", owner: self, options: nil).first as! UpdateTableViewCell
        
        
        //this is creating a brandnew cell
        //var cell = UpdateTableViewCell()
        //The green updates is the updates at the top of the file, the white updates is the local one. Everything within this scope is going to talk to the white updates. This white updates is a constant. very often people will call their if let statment the sme thing they are looking for.
        if let updates = updates {
            var update = updates[indexPath.row]
            cell.updateTextLabel?.text = update.text
        }
        
        return cell
    }

}

