//
//  SecondViewController.swift
//  demoNotificationCenter
//
//  Created by AgribankCard on 3/16/17.
//  Copyright © 2017 cuongpc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var notificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(SecondViewController.actOnSpecialNotification), name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func actOnSpecialNotification() {
        self.notificationLabel.text = "I heard the notification!"
    }


}

