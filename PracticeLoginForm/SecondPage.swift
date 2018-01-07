//
//  SecondPage.swift
//  PracticeLoginForm
//
//  Created by SGI-Mac7 on 28/12/2017.
//  Copyright © 2017 Slash Global. All rights reserved.
//

import UIKit

class SecondPage: UIViewController,UITabBarDelegate {

    @IBOutlet weak var Controller: UISegmentedControl!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var mytabbar: UITabBar!
    @IBOutlet weak var LBl: UILabel!
    
    
  
    @IBAction func abc(_ sender: AnyObject)
     {
           if Controller.selectedSegmentIndex == 0
           {
           self.Label.text = "First Slide"
           }
        
           if Controller.selectedSegmentIndex == 1
           {
            self.Label.text = "Second Slide"
            
            
           }
        
           if Controller.selectedSegmentIndex == 2
           {
            self.Label.text = "Third Slide"
           }
     }
    
    
    @IBAction func Slider(_ sender: UISlider)
    {
        self.LBl.text = String(Int(sender.value))
    }
    
    override func viewDidLoad()
    {
       super.viewDidLoad()
       self.mytabbar.delegate = self
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
    {
        if item.tag == 0
        {
            self.performSegue(withIdentifier: "moreoption", sender: self)
        }
    }
}
