//
//  ViewController.swift
//  Unihack2019
//
//  Created by Gabrielle Chandrasaputra on 16/3/19.
//  Copyright © 2019 Gabrielle Chandrasaputra. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginResponse(_ sender: Any) {
        print(email.text as Any)
        print(password.text as Any)
        
        Auth.auth().signIn(withEmail: email.text ?? "", password: password.text ?? "") { (user, error) in
            if let error = error {
                let alert = UIAlertController(title: "Unable to login", message: "The username or password is incorrect", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else {
                print("success")
                self.performSegue(withIdentifier: "logInSegue", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }


}

