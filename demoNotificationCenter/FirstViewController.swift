//
//  FirstViewController.swift
//  demoNotificationCenter
//
//  Created by AgribankCard on 3/16/17.
//  Copyright © 2017 cuongpc. All rights reserved.
//

import UIKit

let mySpecialNotificationKey = "cuongpc"

class FirstViewController: UIViewController {
    
    @IBOutlet weak var sentNotificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector (FirstViewController.updateNotificationSentLabel), name: NSNotification.Name(rawValue:mySpecialNotificationKey), object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateNotificationSentLabel() {
        self.sentNotificationLabel.text = "Notification sent!"
    }

    @IBAction func notifyAction(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: mySpecialNotificationKey), object: self)
    }

}

