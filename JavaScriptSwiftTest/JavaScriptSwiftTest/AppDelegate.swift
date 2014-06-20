//
//  AppDelegate.swift
//  JavaScriptSwiftTest
//
//  Created by Antoine Quint on 20/06/14.
//  Copyright (c) 2014 Studio Luco. All rights reserved.
//

import Cocoa
import JavaScriptCore

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    @lazy var context = JSContext()

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        println("Started")
        context.globalObject.setValue(JSCustomObject(), forProperty: "customObject")
        context.evaluateScript("console.log('Running tests')")
        context.evaluateScript("customObject.testProperty")
        context.evaluateScript("customObject.testProperty = 'foo'")
        context.evaluateScript("customObject.testFunction()")
        context.evaluateScript("console.log('Done')")
        println("Done")
    }

}

