//
//  ViewController.swift
//  Unihack2019
//
//  Created by Gabrielle Chandrasaputra on 16/3/19.
//  Copyright © 2019 Gabrielle Chandrasaputra. All rights reserved.
//

import UIKit
import FirebaseDatabase


class PointsViewController: UIViewController {
    @IBOutlet weak var totalPoints: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ref = Database.database().reference()
        
        ref.child("Customer/1/Points/TotalPoints").observeSingleEvent(of: .value) {
            (snapshot) in let totalPointsDB = snapshot.value as? Int
        
            //self.totalPoints.text = "\(totalPointsDB)"
            
            //print(totalPointsDB ?? "")
            
            self.totalPoints.text = String(totalPointsDB!);
            
        }
        
        
    }
    
    
}

