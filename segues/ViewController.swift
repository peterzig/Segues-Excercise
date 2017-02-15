//
//  ViewController.swift
//  segues
//
//  Created by Peter Zaporowski on 15.02.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Additional but non-necessary functions to perfom Segues
    @IBAction func loadRed(sender: AnyObject!) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    @IBAction func loadBlue(sender: AnyObject!) {
        performSegueWithIdentifier("goToBlue", sender: nil)
    }
    
    @IBAction func loadGreen(sender: AnyObject!) {
        performSegueWithIdentifier("goToGreen", sender: nil)
    }
    
    // Labels that change value - not done right :(
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? BlueViewController {
               blueVC.transferText = "Hej wlasnie zmienil sie Label!"
                
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
            }
        }
        
    }
}

