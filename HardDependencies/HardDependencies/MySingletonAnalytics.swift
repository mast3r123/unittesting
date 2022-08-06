//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by master on 8/6/22.
//

import Foundation

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.shared {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
