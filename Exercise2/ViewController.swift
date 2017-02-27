//
//  ViewController.swift
//  Exercise2
//
//  Created by Alaxabo on 2/27/17.
//  Copyright © 2017 Alaxabo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var familyName: UITextField!
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var katafamiName: UITextField!
    @IBOutlet weak var katayouName: UITextField!
    @IBOutlet weak var mailAddress: UITextField!
    @IBOutlet weak var birthDate: UITextField!
    @IBOutlet weak var telPhone1: UITextField!
    @IBOutlet weak var telPhone2: UITextField!
    @IBOutlet weak var telPhone3: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        // create the alert
        if ((familyName.text?.isEmpty)! || (yourName.text?.isEmpty)! || (katafamiName.text?.isEmpty)! || (katayouName.text?.isEmpty)! || (mailAddress.text?.isEmpty)! || (birthDate.text?.isEmpty)! || (telPhone1.text?.isEmpty)! || (telPhone2.text?.isEmpty)! || (telPhone3.text?.isEmpty)! ) {
        let alert = UIAlertController(title: "Alert", message: "You Must Fill All", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        }
        else{
            //var check = 0
            //var mail = mailAddress.text
            //for i in (mail?.characters)! {
              //  if i == "@"{
                //    check = 1
                //}
            //}
            if isValidEmail(testStr: mailAddress.text!) == false
            {
            let alert = UIAlertController(title: "Alert", message: "Invalid Email", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alert, animated: true, completion: nil)
            }
            else
            {
            let alert = UIAlertController(title: "Register Done", message: "Your Account Have Been Create", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        }
    }

}

