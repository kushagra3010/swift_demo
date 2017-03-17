//: Playground - noun: a place where people can play

import UIKit

// Classes
class Person {
    let personID:Int;
    let panCardNo:String = "CA******90J"
    var name: String = "No Name"
    var x:Int=10
    var y:Int=10
    var total:Int {
        get {
            return x + y;
        }
    }
    
    /*
     If a stored property’s default value requires some customization or setup, you can use a closure or global function to provide a customized default value for that property. Whenever a new instance of the type that the property belongs to is initialized, the closure or function is called, and its return value is assigned as the property’s default value.
     
     These kinds of closures or functions typically create a temporary value of the same type as the property,
     
    */
    let someProperty: Int = {
        return 90
    }()
    
    init(name: String) {
        self.personID = 1 // assign constant property during initialization
        self.name = name // No need to write return statement
    }
    
    // Failable initializers [available for class, struct, enums]
    init?(name: String, name2: String) {
        return nil
    }
    
    /*
     Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer
    */
    required init(personId:Int) {
        personID = -1
    }
    
    func simpleDesc(){
        print(self);
    }
}

class Indian : Person {
    let height:Double = 0.0
    
    required init(personId: Int) {
        super.init(personId: -11)
    }
    
    override init(name: String) {
        super.init(name: name);
    }
}

// Initialize classes
var person1 = Person(name: "Bill")
let person2 = person1;

person1.name
person2.name

person1.name = "Steve"

person1.name
person2.name

person2.simpleDesc()

person2.total;

if person1 === person2 {
    print("Both objects are same")
} else {
    print("Both objects are different")
}

struct Wallet {
    var name:String
    var x: Int
    var y: Int
    var total:Int {
        get {
            return x + y;
        }
    }
    
    init(name: String) {
        self.name = name;
        self.x = 10
        self.y = 10 // not required return statement at the end, No name of init
    }
    
    func simpleDesc(){
        print("Wallet");
    }
}

// Struct : Memberwise Initializers for Structure Types
/*
 Structure types automatically receive a memberwise initializer if they do not define any of their own custom initializers
 */
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)


// extension on struct
extension Wallet:Equatable {
    public static func ==(lhs: Wallet, rhs: Wallet) -> Bool {
        return lhs.name == rhs.name;
    }
}

// Initialize structs
var wallet1 = Wallet(name: "Wallet A")
let wallet2 = wallet1;

wallet1.name
wallet2.name

wallet1.name = "Wallet B"

wallet1.name
wallet2.name

wallet2.simpleDesc()

wallet2.total;


if wallet1 == wallet2 {
    print("Both objects are same")
} else {
    print("Both objects are different")
}












/*
 class Person {
 var residence: Residence?
 func behaviour() -> String {
 return "Good"
 }
 }
 
 class Residence {
 var type:String = "Flat";
 func size() -> String {
 return "Small"
 }
 }
 
 var person:Person? = Person();
 person?.residence?.type.characters.count
 person?.behaviour()
 person?.residence?.size()
 person!.behaviour()
 */
