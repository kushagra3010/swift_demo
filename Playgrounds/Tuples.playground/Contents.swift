//: Playground - noun: a place where people can play
// Value type

import UIKit

// Unnamed tuple
var xyz1 = ("Swift", 12, 12.5)
var xyz2 = ("Objective C", 10, 13.4)
var xyz3 = (10, "C")

xyz1 = xyz2
xyz2.0
xyz2.0 = "C++"

// Named tuple
var abc1 = (language:"C", minMarks:30, maxMarks:75.5);
abc1.language
abc1.language = "python"
var abc2 = (x:"C++", y:55, z:45.2);

// Decomposition
var (v1, v2, v3) = xyz1
v1

// Returning  multiple values in func
func calculations(p1:Int, p2:Int) -> (addition: Int,substraction: Int) {
    return (p1 + p2, p1 - p2)
}

var result = calculations(p1: 8, p2: 2)
result.addition
result.substraction

// Iterate through dictionary
var dict = [1:"One", 2:"Two", 3:"Three"]

for (key, value) in dict {
    print("\(value)")
}





