//: Playground - noun: a place where people can play

import UIKit

//--- Generic func

func swapTwoValues<T>(ValueA a: inout T, ValueB b: inout T) {
    let temporaryA:T = a
    a = b
    b = temporaryA
}

var intVal1 = 10
var intVal2 = 20

swapTwoValues(ValueA: &intVal1,ValueB: &intVal2);

intVal1
intVal2

var strVal1 = "A"
var strVal2 = "B"

swapTwoValues(ValueA: &strVal1,ValueB: &strVal2);

strVal1
strVal2

//--- Generic struct type

struct Stack<Element> {
    var items = [Element]() // Array
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stack1 = Stack<String>()
stack1.push("a")
stack1.push("b")
stack1.items
stack1.pop()
stack1.pop()
stack1.items

var stack2 = Stack<Int>()
stack2.push(100)
stack2.push(200)
stack2.items
stack2.pop()
stack2.pop()
stack2.items



