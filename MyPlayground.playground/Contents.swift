import UIKit

var greeting = "Hello, playground"
var isAdmin = false
var isDonat = true
var isModerator = true
var AdminMode = false
var proModer = false
print("______________________")
if isAdmin == true  && isDonat == true && isModerator == true {
    print("Super, you Admin")
   AdminMode = true
}else {
        print("Bad, you not admin")
        
}
print(AdminMode)
print("______________________")
if (isAdmin == true || isModerator == true) && isDonat == true {
    print("You proModer")
    proModer = true
    
} else {
    print("Bad")
}
print(proModer)

func sum(_ a: Int, _ b: Int) -> Int {
   return a + b
}

func sum1(_ a: Double, _ b: Double) -> Double { a + b }
let result = sum(10, 20)
let result1 = sum1(10.5, 30.9)
print(result)
print(result1)

print("______________________")

func textSum(_ text1 : String,_ text2: String) -> String {
    return "\(text1) \(text2)"
}
let hello = textSum("hello", "world!")
print(hello)

print("______________________")

let first = "Hello,"
let last = "Misha"
let fullHello = "\(first) \(last)"
print(fullHello)

print("______________________")

func helloName(_ text1 : String) -> String {
    return "Hello, \(text1)"
}
print(helloName("Misha"))

var line = "______________________"
print(line)

let str1 = "Hello, "
let str2 = "World!"
let sumStr = str1.count + str2.count
print(sumStr)

func numberSquared(_ number: Int) -> Int {
    return number * number
}
    print(numberSquared(10))

print(line)

func doubleNubmerSquared (_ number: Double) -> Double {
    return number * number
}
print(doubleNubmerSquared(25.5))

print(line)
import Foundation
func circleArea (_ radius: Double) -> Double{
    return Double.pi * pow(radius, 2)
}
print("Circle Area \(circleArea(12.6))")

print(line)

func dayMode() -> String {
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 0..<6:
        return "Night"
    case 6..<12:
        return "Morning"
    case 12..<18:
        return "Day"
    case 18..<22:
        return "Evening"
    case 22..<25:
        return "Night"
    default:
        return "Error"
    }
    
}
print(dayMode())
print(line)

func dayMode1(for time: Int) -> String {
    switch time {
    case 0...5:
        return "Night"
    case 6...11:
        return "Morning"
    case 12...17:
        return "Day"
    case 18...21:
        return "Evening"
    case 22...24:
        return "Night"
    default:
        return "Error"
    }
}

print(dayMode1(for: 10))
print(dayMode1(for: 26))

func Year(for mounth: Int) -> String {
    switch mounth {
    case 12,1...2:
        return "Winter"
    case 3...5:
        return "String"
    case 6...8:
        return "Summer"
    case 9...11:
        return "Autumn"
    default:
        return "Error"
    }
}
print(Year(for: 12))
print(line)

