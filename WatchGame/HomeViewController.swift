//
//  HomeViewController.swift
//  WatchGame
//
//  Created by Lucas Ferraço on 29/09/16.
//  Copyright © 2016 Lucas Ferraço. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    let userRecord = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        if userRecord.value(forKey: "recorde") == nil {
            userRecord.set(0, forKey: "recorde")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        recordLabel.text = "Recorde: \(userRecord.value(forKey: "recorde") as! Int)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
