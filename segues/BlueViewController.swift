//
//  BlueViewController.swift
//  segues
//
//  Created by Peter Zaporowski on 15.02.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var mainLbl: UILabel!
    var transferText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
          mainLbl.text = transferText
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
