//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by master on 8/6/22.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Analytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }
    
}
