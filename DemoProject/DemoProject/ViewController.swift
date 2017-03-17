//
//  ViewController.swift
//  DemoProject
//
//  Created by Kushagra Pandya on 3/16/17.
//  Copyright © 2017 meetup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func validate() -> String? {
        let trimEmail: String? = self.txtEmail.text?.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        guard (trimEmail?.lengthOfBytes(using: .utf8))! > 0 else {
            return "Please enter email"
        }
        let trimPass: String? = self.txtPassword.text?.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        guard (trimPass?.lengthOfBytes(using: .utf8))! > 0 else {
            return "Please enter password"
        }
        guard (trimEmail?.isValidEmail())! else {
            return "Please enter valid email"
        }
        
        return nil
    }

    @IBAction func btnLoginClicked(_ sender: Any) {
        
        let errorMesage: String? = validate()
        if errorMesage == nil {
            let alertCon = UIAlertController(title: "Alert",
                                             message: "Login validation pass"
                , preferredStyle: .alert)
            alertCon.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default ,
                                             handler:nil))
            self.present(alertCon, animated: true, completion: nil)
        } else {
            let alertCon = UIAlertController(title: "Alert",
                                             message: errorMesage
                , preferredStyle: .alert)
            alertCon.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default ,
                                             handler: { (action) in
            }))
            self.present(alertCon, animated: true, completion: nil)
        }
    }
}


extension String {
    func isValidEmail() -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
