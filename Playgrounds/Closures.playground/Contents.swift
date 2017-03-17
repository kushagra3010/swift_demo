//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var names = ["b", "a", "c"]

var reversedNames1 = names.sorted(by:{
    (s1 : String,s2: String) -> Bool in
    return s1 > s2
})

// returns 10.0, which is the arithmetic mean of these three numbers
var reversedNames2 = names.sorted(by: { s1, s2 in return s1 > s2 } )

var reversedName3 = names.sorted(by: {$0 > $1})

var reversedName4 = names.sorted(by: >)

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

//Example for trailing closures


// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}
