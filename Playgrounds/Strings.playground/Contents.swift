//: Playground - noun: a place where people can play

import UIKit

// String Manipulation
var string1 = "Hello"
string1 += " Swift "
let char:Character = "a"
string1.append(char);
string1.characters.count

//String Concatenating

let string2 = " there"
var welcome = string1 + string2
var instruction = "look over"
instruction += string2

// String Interpolation
let vegetables = 5
let totalFruits = "We have \(vegetables) vegetables."

var floatN:Float = 2.345
var str = "\(floatN)"
var str2 = String(format: "%0.1f", floatN)

//Working with characters
for character in "Dog!".characters {
    print(character)
}


