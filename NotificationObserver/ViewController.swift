//
//  ViewController.swift
//  NotificationObserver
//
//  Created by vasishth suthar on 11/05/20.
//  Copyright © 2020 technicalinitial. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(openAlert), name: Notification.Name(rawValue: "CallThis"), object: nil)
    }
    
    @objc func openAlert() {
        
        let alertController = UIAlertController(title: "Alert", message: "NotificationCenter Post", preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (Action) in
            print("OK")
            
            NotificationCenter.default.removeObserver(self, name: Notification.Name(rawValue: "CallThis"), object: nil)
        }))
        self.present(alertController, animated: true)
        
    }

}

