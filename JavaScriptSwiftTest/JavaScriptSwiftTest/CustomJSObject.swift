//
//  CustomJSObject.swift
//  JavaScriptSwiftTest
//
//  Created by Antoine Quint on 20/06/14.
//  Copyright (c) 2014 Studio Luco. All rights reserved.
//

import Foundation
import JavaScriptCore

protocol JSCustomObjectExport : JSExport {
    var testProperty : String { get set }
    func testFunction() -> String
}

class JSCustomObject : NSObject, JSCustomObjectExport {
    var testProperty : String {
    get {
        println("get testProperty")
        return "testProperty"
    }
    set(newProperty) {
        println("set testProperty")
    }
    }
    
    func testFunction() -> String {
        println("called testFunction")
        return "testFunction()"
    }
}
