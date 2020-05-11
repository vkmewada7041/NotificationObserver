//
//  ViewControllerSecond.swift
//  NotificationObserver
//
//  Created by vasishth suthar on 11/05/20.
//  Copyright © 2020 technicalinitial. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "CallThis"), object: nil)
        
        
    }

}
