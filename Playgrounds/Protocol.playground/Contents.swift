//: Playground - noun: a place where people can play

import UIKit

protocol FullyNamed {
    var fullName: String { get }
    
    static func someTypeMethod()
    
    init(name: String)
}

struct PersonStruct: FullyNamed {
    var fullName: String
    static func someTypeMethod() {
        //implementation
    }
    
    init(name: String) {
        fullName = name
    }
    
    func someMethod(_ argument: inout String) {
        argument = "saf"
    }
    
    func someOtherMehod() {
        var str = "hello"
        self.someMethod(&str)
        print(str)
    }
}

var person = PersonStruct(name:"sdf")


