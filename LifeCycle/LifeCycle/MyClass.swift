//
//  MyClass.swift
//  LifeCycle
//
//  Created by master on 8/4/22.
//

import Foundation

class MyClass {
    
    private static var allInstances = 0
    private let instance: Int
    
    init() {
        MyClass.allInstances += 1
        instance = MyClass.allInstances
        print(">> MyClass.init() #\(instance)")
    }
    
    deinit {
        print(">> MyClass.deinit() #\(instance)")
    }
    
    func methodOne() {
        print(">>> Method One")
    }
    
    func methodTwo() {
        print(">>> Method Two")
    }
}
