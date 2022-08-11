//
//  TestHelper.swift
//  NavigationTests
//
//  Created by master on 8/11/22.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func executeRunLoop() {
    RunLoop.current.run(until: Date())
}
