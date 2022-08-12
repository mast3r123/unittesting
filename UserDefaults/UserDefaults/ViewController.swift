//
//  ViewController.swift
//  UserDefaults
//
//  Created by master on 8/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    
    let key = "count"
    
    private var count = 0 {
        didSet {
            counterLabel.text = "\(count)"
            UserDefaults.standard.set(count, forKey: key)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = UserDefaults.standard.integer(forKey: key)
    }

    @IBAction private func incrementButtonTapped() {
        count += 1
    }

}

