//
//  DisplayViewController.swift
//  imageViewer
//
//  Created by Tezro Solutions on 15/05/2015.
//  Copyright (c) 2015 Tezro Solutions. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {


    var currentPhoto : Photo?
    
    @IBOutlet var uiImgeView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    var image = UIImage(named: currentPhoto!.filename)
uiImgeView.image = image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    var thirdViewController = segue.destinationViewController as InfoViewController

        thirdViewController.currentPhoto  = self.currentPhoto
    
    }


}
