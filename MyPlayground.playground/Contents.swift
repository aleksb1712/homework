
import UIKit
import Foundation

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

func sumAB(_ a: Int, _ b: Int) -> Int {
   return a + b
}

func sum1(_ a: Double, _ b: Double) -> Double { a + b }
let result = sumAB(10, 20)
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
let sumFullHello = "\(first) \(last)"
print(sumFullHello)

print("______________________")

func printHelloName(_ text1 : String) -> String {
    return "Hello, \(text1)"
}
print(printHelloName("Misha"))

var line = "______________________"
print(line)

let str1 = "Hello, "
let str2 = "World!"
let sumStr = str1.count + str2.count
print(sumStr)

func  sumStr1(_ str1: String,_ str2: String) -> String {
    return "\(str1) \(str2)"
}

print(sumStr1("Hello", "World"))

func sumStr2(_ str1: String,_ str2: String) -> String {
    return "\(str1) \(str2)"
}
print(sumStr2("Hello", "World"))
let sumStrFull = sumStr2("Hello", "World") .count

print(sumStrFull)

func calculateNumberSquared(_ number: Int) -> Int {
    return number * number
}
    print(calculateNumberSquared(10))

print(line)

func doubleNubmerSquared(_ number: Double) -> Double {
    return number * number
}
print(doubleNubmerSquared(25.5))

print(line)
func calculateCircleArea(_ radius: Double) -> Double {
    return Double.pi * pow(radius, 2)
}
print("Circle Area \(calculateCircleArea(12.6))")

print(line)

func getDayMode() -> String {
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
print(getDayMode())
print(line)

func getDayMode1(for time: Int) -> String {
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

print(getDayMode1(for: 10))
print(getDayMode1(for: 26))

func getYear(for mounth: Int) -> String {
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
print(getYear(for: 12))
print(line)

enum setCurrency: String, CaseIterable, Identifiable {
    case usd = "USD"
    case eur = "EUR"
    case rub = "RUB"
    case byn = "BYN"
    
    var id: String {self.rawValue}
    var symbol: String {
        switch self {
        case .usd: return "$"
        case .eur: return "€"
        case .rub: return "₽"
        case .byn: return "Б"
        }
    }
        var rates: Double {
            switch self {
            case .usd: return 1.00
            case .eur: return 0.85
            case .rub: return 73.95
            case .byn: return 2.80
            }
        }
    }


    
    func currencyConverter(_ amount: Double, from: setCurrency, to: setCurrency) -> Double {
        let amountCurrency = amount / from.rates
        return amountCurrency * to.rates
        
    }

print(currencyConverter(12341.22, from: .byn, to: .rub))
