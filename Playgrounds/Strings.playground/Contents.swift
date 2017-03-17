//: Playground - noun: a place where people can play

import UIKit

// String Manipulation
var string1 = "Hello"
string1 += " Swift "
let char:Character = "😀"
string1.append(char);
string1.characters.count

// String Interpolation
let vegetables = 5
let totalFruits = "We have \(vegetables) vegetables."

var floatN:Float = 2.345
var str = "\(floatN)"
var str2 = String(format: "%0.1f", floatN)

//Working with characters / Unicode
let characters = "Dog!🐶😀"

// Different representation of string
print("")
for character in characters.characters {
    print("\(character) ", terminator: "")
}

print("")
for codeUnit in characters.utf8 {
    print("\(codeUnit) ", terminator: "")
}

print("")
for codeUnit in characters.utf16 {
    print("\(codeUnit) ", terminator: "")
    var char = codeUnit
}



