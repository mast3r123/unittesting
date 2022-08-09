//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by master on 8/6/22.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    
    lazy var analytics = Analytics.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }
    
}
