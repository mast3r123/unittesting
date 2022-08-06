//
//  Analytics.swift
//  HardDependencies
//
//  Created by master on 8/6/22.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">>> \(event)")
        
        if self !== Analytics.shared {
            print(">>> Not the analytics singleton")
        }
    }
}
