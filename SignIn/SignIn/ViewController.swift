//
//  ViewController.swift
//  SignIn
//
//  Created by AWEEK.JO on 2016. 7. 25..
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var websiteTextField: UITextField!
    
    @IBOutlet var resultTextView: UITextView!
    
    @IBAction func registerAction(sender: AnyObject) {
       resultTextView.text = "Welcome, \(nameTextField.text!).\n"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

