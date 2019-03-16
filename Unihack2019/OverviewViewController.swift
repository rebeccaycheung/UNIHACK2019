//
//  OverviewViewController.swift
//  Unihack2019
//
//  Created by Gabrielle Chandrasaputra on 17/3/19.
//  Copyright © 2019 Gabrielle Chandrasaputra. All rights reserved.
//

import Foundation
import UIKit

class OverviewViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //hide navigation bar in homepage
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
}
