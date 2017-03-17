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
        guard self.txtEmail.text == nil else {
            return "Please enter email"
        }
        return nil
    }

    @IBAction func btnLoginClicked(_ sender: Any) {
        
        let errorMesage: String? = validate()
        if errorMesage == nil {
            
        } else {
            let alertCon = UIAlertController(title: "Alert",
                                             message: errorMesage
                , preferredStyle: .alert)
            alertCon.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default ,
                                             handler: { (action) in
                                                self.txtEmail.becomeFirstResponder();
            }))
            self.present(alertCon, animated: true, completion: nil)
        }
    }
}

