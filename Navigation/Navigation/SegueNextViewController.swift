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

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
    }
    

}
