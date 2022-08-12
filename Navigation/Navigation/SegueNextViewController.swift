//
//  SegueNextViewController..swift
//  Navigation
//
//  Created by master on 8/11/22.
//

import UIKit

class SegueNextViewController: UIViewController {
    
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!
    
    deinit {
        print(">> SegueNextViewController.deinit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
    }
    

}
