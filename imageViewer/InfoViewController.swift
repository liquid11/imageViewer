//
//  InfoViewController.swift
//  imageViewer
//
//  Created by Tezro Solutions on 16/05/2015.
//  Copyright (c) 2015 Tezro Solutions. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var lblDetails: UILabel!
    
    var currentPhoto : Photo?
    
    @IBAction func btnOK(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lblDetails.text = currentPhoto!.notes
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
