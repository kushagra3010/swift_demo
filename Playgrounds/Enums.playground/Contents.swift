//: Playground - noun: a place where people can play

import UIKit

// Basic enum
enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.east;

directionToHead = .north

// Enums in switches
switch directionToHead {
    case .north:
        print("Lots of planets have a north")
    case .south:
        print("Watch out for penguins")
    case .east:
        print("Where the sun rises")
    case .west:
        print("Where the skies are blue")
}

// Enums with raw value
enum RecordingState:String {
    case NotStarted="NOTSTARTED"
    case Started="STARTED"
    case Done="DONE"
}

// Initialize enum from raw value
var recState1:RecordingState? = RecordingState(rawValue: "NOTSTARTED")

// Initialize enum using case value
var recState2 = RecordingState.Started
recState2.rawValue

// Enums with associated value
enum DeviceType {
    case iPhone(String)
    case iPad(String)
    case iWatch
    
    // Computed property
    var currentDate:Date {
        get {
            return Date();
        }
    }
    
    // Function
    func deviceType() -> (String){
        switch self {
            case .iPhone(let model):
                return("iPhone \(model)")
            case .iPad(let model):
                return("iPad \(model)")
            case .iWatch:
                return("iWatch")
        }
    }
}

var myDevice = DeviceType.iPhone("7")

myDevice.deviceType();
myDevice.currentDate

var v:Double = 20.0
var x:Float = Float(v)






