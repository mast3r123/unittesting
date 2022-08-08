//
//  InstanceInitializerViewController.swift
//  HardDependencies
//
//  Created by master on 8/6/22.
//

import UIKit

class InstanceInitializerViewController: UIViewController {
    
    private let analytics: Analytics

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(analytics: Analytics = Analytics.shared) {
        self.analytics = analytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }

}
