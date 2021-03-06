//
//  FirstViewController.swift
//  TabAndSearchTest
//
//  Created by Albert Bori on 4/30/15.
//  Copyright (c) 2015 albertbori. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var searchResultsController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("SearchResultsTableViewController") as! SearchResultsTableViewController
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: searchResultsController)
        searchController.delegate = searchResultsController
        searchController.searchBar.sizeToFit()
        searchController.searchBar.delegate = searchResultsController
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        
        tableView.tableHeaderView = searchController.searchBar
        self.definesPresentationContext = true
        
        self.navigationController?.visibleViewController?.title = "First View"
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListCell", forIndexPath: indexPath) 
        
        cell.textLabel?.text = "Cool data!"
        
        return cell
    }


}

