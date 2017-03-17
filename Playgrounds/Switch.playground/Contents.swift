

let someCharacter: Character = "c"
switch someCharacter {
    case "a":
        print("a")
    case "b":
        print("b")
    case "c":
        print("c 1")
    fallthrough
    case "c":
        print("c 2")
    default:
        print("None")
}

// Ranges
let approxCount = 5
var countText: String
switch approxCount {
    case 0:
        countText = "no"
    case 1..<5:
        countText = "a few"
    case 5..<12:
        countText = "several"
    case 12..<100:
        countText = "dozens of"
    case 100..<1000:
        countText = "hundreds of"
    default:
        countText = "many"
}

// Tuples
let somePoint = (1, 1)
switch somePoint {
    case (0, 0):
        print("\(somePoint)")
    case (_, 0):
        print("\(somePoint)")
    case (0, _):
        print("\(somePoint)")
    case (-2...2, -2...2):
        print("\(somePoint)")
    default:
        print("\(somePoint)")
}

// Where keyword
var temperature = 52
switch (temperature) {
    case 0...49 where temperature % 2 == 0:
        print("Cold and even")
        
    case 50...79 where temperature % 2 == 0:
        print("Warm and even")
        
    case 80...110 where temperature % 2 == 0:
        print("Hot and even")
    default:
        print("Temperature out of range or odd")
}


//Compound cases

let someOtherCharacter: Character = "e"
switch someOtherCharacter {
case "a", "e", "i", "o", "u":
    print("\(someOtherCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someOtherCharacter) is a consonant")
default:
    print("\(someOtherCharacter) is not a vowel or a consonant")
}


// Complex matching
var thing:Any? = 0

switch thing {
    case 0 as Int:
        print("zero as an Int")
        fallthrough
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble != 1:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    default:
        print("something else")
}



// Check for optionals
var result: String? = "as"
switch result {
    case nil:
        print("is nothing")
    case let a:
        print("contains value \(a)")
}
