//
//  AppDelegate.swift
//  AppLaunch
//
//  Created by master on 8/5/22.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("<< Launching from test app delegate")
        return true
    }

}


