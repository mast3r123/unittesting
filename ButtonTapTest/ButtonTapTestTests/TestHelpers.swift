//
//  TestHelpers.swift
//  ButtonTapTestTests
//
//  Created by master on 8/10/22.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}
