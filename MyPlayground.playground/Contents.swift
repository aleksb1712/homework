
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

enum setCurrency1: String, CaseIterable, Identifiable {
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
        var ratesCurrency: Double {
            switch self {
            case .usd: return 1.00
            case .eur: return 0.85
            case .rub: return 73.95
            case .byn: return 2.80
            }
        }
    }


    
    func currencyConverter1(_ amount: Double, from: setCurrency1, to: setCurrency1) -> Double? {
        let amountCurrency = amount / from.ratesCurrency
            return amountCurrency * to.ratesCurrency
        
            
        
    }

print(currencyConverter1(12341.22, from: .byn, to: .rub))

print(line)

enum setCurrency: String {
    case usd1 = "USD"
    case eur1 = "EUR"
    case rub1 = "RUB"
    case byn1 = "BYN"
}
func getExchangeRate(from: setCurrency, to: setCurrency) -> Double? {
    if from == to {return 1.0}
    let rates: [String: Double] = [
        "USD_EUR": 0.85,
        "USD_RUB": 0.014,
        "USD_BYN": 2.79,
        "EUR_USD": 1.17,
        "EUR_RUB": 0.012,
        "EUR_BYN": 3.26,
        "RUB_USD": 0.014,
        "RUB_EUR": 0.012,
        "RUB_BYN": 0.038,
        "BYN_USD": 0.36,
        "BYN_EUR": 0.31,
        "BYN_RUB": 26.18
    ]
    let key = "\(from.rawValue)_\(to.rawValue)"
    return rates[key]
}

func convertCurrency(amount: Double, from: setCurrency, to: setCurrency) -> Double? {
    guard let rate = getExchangeRate(from: from, to: to) else {
        return nil
    }
    return amount / rate
}
if let convertResult = convertCurrency(amount: 100, from: .eur1, to: .rub1) {
    print("1000 EUR = \(convertResult) RUB")
} else {
    print("Currency Not Found")
}

print(line)

enum Grade: Int {
    case a = 90
    case b = 80
    case c = 70
    case d = 60
    case f = 0
}


func getLetterGrade(score: Int) -> Grade? {
    
    guard score >= 0 && score <= 100 else { return nil }
    
    switch score {
    case 90...100: return .a
    case 80..<89:  return .b
    case 70..<79:  return .c
    case 60..<69:  return .d
    default:       return .f
    }
}


func printExamResult(name: String, score: Int) -> String {
    if let grade = getLetterGrade(score: score) {
        let letter = "\(grade)".uppercased()
        return "\(name) получил \(letter) (Балл: \(score))"
    } else {
        return "\(name) получил недопустимый балл: \(score)"
    }
}
print(printExamResult(name: "Nik", score: 80))

print(line)

import Foundation


typealias Student = (name: String, age: Int, grades: [String: Double], optionalSubjects: Set<String>)


var studentsList: [Student] = [
    (name: "Иван", age: 20, grades: ["Математика": 4.8, "Программирование": 5.0, "Физика": 4.5], optionalSubjects: ["Робототехника", "Шахматы"]),
    (name: "Анна", age: 19, grades: ["Математика": 4.2, "Программирование": 4.7], optionalSubjects: ["Хор", "Театр", "Живопись"]),
    (name: "Сергей", age: 20, grades: ["Физика": 3.8, "История": 4.0], optionalSubjects: ["Шахматы"]),
    (name: "Мария", age: 21, grades: ["Математика": 5.0, "Программирование": 5.0, "Английский": 5.0], optionalSubjects: ["Робототехника", "Дебаты", "3D-моделирование", "Дизайн"]),
    (name: "Петр", age: 19, grades: [:], optionalSubjects: []) 
]


func calculateAverageGrade(student: Student) -> Double? {
    guard !student.grades.isEmpty else { return nil }
    let sum = student.grades.values.reduce(0.0, +)
    return sum / Double(student.grades.count)
}


func findStudentsByAge(students: [Student], age: Int) -> [Student] {
    return students.filter { $0.age == age }
}


func getTopStudents(students: [Student], top: Int) -> [(name: String, averageGrade: Double)] {
    return students
        .compactMap { student -> (name: String, averageGrade: Double)? in
            guard let avg = calculateAverageGrade(student: student) else { return nil }
            return (name: student.name, averageGrade: avg)
        }
        .sorted { $0.averageGrade > $1.averageGrade }
        .prefix(top)
        .map { $0 }
}


func getUniqueOptionalSubjects(students: [Student]) -> Set<String> {
    let allSubjects = students.flatMap { $0.optionalSubjects }
    return Set(allSubjects)
}


func findStudentWithMostOptionalSubjects(students: [Student]) -> Student? {
    return students.max { $0.optionalSubjects.count < $1.optionalSubjects.count }
}



print("--- 1. Информация о всех студентах ---")
for student in studentsList {
    let avgGradeString = calculateAverageGrade(student: student) != nil ? String(format: "%.2f", calculateAverageGrade(student: student)!) : "нет оценок"
    let subjectsString = student.optionalSubjects.isEmpty ? "нет факультативов" : student.optionalSubjects.joined(separator: ", ")
    
    print("Имя: \(student.name), Возраст: \(student.age), Средний балл: \(avgGradeString), Факультативы: [\(subjectsString)]")
}

print("\n--- 2. Список студентов возраста 20 лет ---")
let studentsAge20 = findStudentsByAge(students: studentsList, age: 20)
studentsAge20.forEach { print("- \($0.name) (\($0.age) лет)") }

print("\n--- 3. Список топ-3 лучших студентов ---")
let top3Students = getTopStudents(students: studentsList, top: 3)
for (index, student) in top3Students.enumerated() {
    print("\(index + 1). \(student.name) — Средний балл: \(String(format: "%.2f", student.averageGrade))")
}

print("\n--- 4. Список всех уникальных факультативов ---")
let uniqueSubjects = getUniqueOptionalSubjects(students: studentsList)
print(uniqueSubjects.joined(separator: ", "))

print("\n--- БОНУС: Студент с наибольшим количеством факультативов ---")
if let topOptionalStudent = findStudentWithMostOptionalSubjects(students: studentsList) {
    print("Студент: \(topOptionalStudent.name) (Посещает факультативов: \(topOptionalStudent.optionalSubjects.count))")
}
