//
//  ImageViewerTableViewController.swift
//  imageViewer
//
//  Created by Tezro Solutions on 15/05/2015.
//  Copyright (c) 2015 Tezro Solutions. All rights reserved.
//

import UIKit

class ImageViewerTableViewController: UITableViewController {
var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var newPhoto = Photo(name: "Morning grass", filename: "morningrass", notes: "morning grass photo")
        
    photos.append(newPhoto)
        
         newPhoto = Photo(name: "norway mountain river", filename: "norway", notes: "norway fjord scenes ")
        
        photos.append(newPhoto)
       
         newPhoto = Photo(name: "norway mountain ", filename: "norway1", notes: "another mountain scene")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "cliff ", filename: "norway2", notes: "man standing on the edge of the cliff ")
        
        photos.append(newPhoto)
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("photoCell", forIndexPath: indexPath) as UITableViewCell

        var photocell = photos[indexPath.row]

        cell.textLabel?.text = photocell.name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    
    var secondViewController  = segue.destinationViewController as DisplayViewController
        if let indexPath = self.tableView.indexPathForSelectedRow(){
        
        let selectedPhoto = photos[indexPath.row]
         secondViewController.currentPhoto = selectedPhoto
            
        }
        
    }


}
