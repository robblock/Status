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
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - UITableViewDataSource
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return 0
            
            
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //TODO: Make this cell re
        var cell = UITableViewCell()
        
        return cell
    }

}

