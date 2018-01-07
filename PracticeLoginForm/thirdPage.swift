//
//  thirdPage.swift
//  PracticeLoginForm
//
//  Created by SGI-Mac7 on 28/12/2017.
//  Copyright © 2017 Slash Global. All rights reserved.
//

import UIKit

class thirdPage: UIViewController {

   
    @IBOutlet weak var Controller: UISegmentedControl!
    @IBOutlet weak var Label: UILabel!
    
    
    @IBAction func ChangeLbl(_ sender: AnyObject)
    {
        if Controller.selectedSegmentIndex == 0
        {
            self.Label.text = "First Page"
            self.view.backgroundColor = UIColor.blue
        }
        if Controller.selectedSegmentIndex == 1
        {
            self.Label.text = "Second Page"
            self.view.backgroundColor = UIColor.yellow
            self.performSegue(withIdentifier: "menuView", sender: self)
        }
        if Controller.selectedSegmentIndex == 2
        {
            self.Label.text = "Third Page"
            self.view.backgroundColor = UIColor.orange
            self.performSegue(withIdentifier: "menuView", sender: self)
            
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
}
