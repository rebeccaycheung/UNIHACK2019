//
//  ViewController.swift
//  Unihack2019
//
//  Created by Gabrielle Chandrasaputra on 16/3/19.
//  Copyright © 2019 Gabrielle Chandrasaputra. All rights reserved.
//

import UIKit
import FirebaseDatabase


class ProfileViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var currentCredit: UITextField!
    @IBOutlet weak var totalCredit: UITextField!
    @IBOutlet weak var claimedCredit: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ref = Database.database().reference()
        
        ref.child("Customer/1/Name").observeSingleEvent(of: .value) {
            (snapshot) in let nameDB = snapshot.value as? String
            print(nameDB ?? "")
            self.name.text = nameDB!;
        }
        
        ref.child("Customer/1/Points/Claimed").observeSingleEvent(of: .value) {
            (snapshot) in let claimedDB = snapshot.value as? Int
            print(claimedDB ?? "")
            self.currentCredit.text = String(claimedDB!);
        }
        
        ref.child("Customer/1/Points/TotalPoints").observeSingleEvent(of: .value) {
            (snapshot) in let totalPointsDB = snapshot.value as? Int
            print(totalPointsDB ?? "")
            self.totalCredit.text = String(totalPointsDB!);
        }
        
        ref.child("Customer/1/Points/Current").observeSingleEvent(of: .value) {
            (snapshot) in let currentDB = snapshot.value as? Int
            print(currentDB ?? "")
            self.claimedCredit.text = String(currentDB!);
        }
        
        
    }
    
    
}

