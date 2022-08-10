//
//  ViewController.swift
//  ButtonTapTest
//
//  Created by master on 8/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func buttonTap() {
        print("Button was tapped")
    }

}

