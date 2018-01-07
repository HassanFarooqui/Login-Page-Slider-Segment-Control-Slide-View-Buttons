//
//  ViewController.swift
//  PracticeLoginForm
//
//  Created by SGI-Mac7 on 26/12/2017.
//  Copyright © 2017 Slash Global. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet weak var TbxPassword: LoginTextField!
    @IBOutlet weak var LblInCorrectPassword: UILabel!
    @IBOutlet weak var TbxUserName: LoginTextField!
    @IBOutlet weak var PasswordButton: UIButton!

    
    func textFieldShouldReturn(_ textField: UITextField ) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let abc =  NSAttributedString(string: "Forget Your Password", attributes : [NSForegroundColorAttributeName:UIColor.white,NSUnderlineStyleAttributeName:1])
        TbxUserName.delegate = self
        TbxPassword.delegate = self
        PasswordButton.setAttributedTitle(abc, for: .normal)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    func gotoSecondPage()
    {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "SecondPageIdentifier") as! SecondPage
        self.present(nextVC, animated: true, completion: nil)
    }
    
    
    @IBAction func btn_regiteredpressed(_ sender: UIButton)
    {
        if TbxUserName.text == "admin" && TbxPassword.text == "admin"
        {
            self.gotoSecondPage()
        }
        else
        {
         LblInCorrectPassword.text = "*Failed to Login User*"
        }
    }

}

