//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    
    var username: String?

    lazy var personalizedGreeting: String = self.greet()
    
    var city: String = "city"
    var country: String {
        willSet(newCountry) {
            print("will set called \(newCountry)")
        }
        didSet {
            print("did set called \(country)")
        }
    }
    var address: String {
        get {
            return "\(city), \(country)"
        }
    }
    
    func greet() -> String {
        print("initialized")
        return "Hello \(self.username)"
    }
    
    init(name: String) {
        self.username = name
        self.country = "default country"
    }
}

var person = Person(name: "Swift")
var greet = person.personalizedGreeting
print(" Welcome to \(person.address)")
person.country = "India"