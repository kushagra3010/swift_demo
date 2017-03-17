//: Playground - noun: a place where people can play

// Default : Non Optional
var x = 49
x = x + 1

// Optional
var y:Int? = 50

// Optional binding - safely access value
if let y_tmp = y {
    x + y_tmp
}

// Force Unwrapping
y = y! + 10

// Implicitly Unwrapped Optional
var z: Int! = 5

z = z + 10 // Implicit unwrapped

if let z_tmp = z {
    x + z_tmp
}
