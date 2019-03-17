
//
//  RewardsViewController.swift
//  Unihack2019
//
//  Created by Gabrielle Chandrasaputra on 17/3/19.
//  Copyright © 2019 Gabrielle Chandrasaputra. All rights reserved.
//

import Foundation
import UIKit

import FirebaseDatabase

class LentilViewController: UIViewController {
    
    @IBOutlet weak var lentilPoints: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ref = Database.database().reference()
        
        
        
        ref.child("Customer/1/Points/Location/3").observeSingleEvent(of: .value) {
                (snapshot) in let lentilPointsDB = snapshot.value as? Int
    
                self.lentilPoints.text = String(lentilPointsDB!);
    
            }
        
    }
    
    //hide navigation bar in homepage
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
}
