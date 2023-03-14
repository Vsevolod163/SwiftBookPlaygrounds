import UIKit

// Арифметические операторы

var a = 9
var b = 4

a + b
a - b
a * b
a / b

// Остаток от деления a = (b * множитель) + остаток

// 9 = (4 * 2) + 1

a % b
-a % b
a % -b

// Оператор присваивания a = b

a = 5
b = 10

//a = a + b

a += b // 15
// С каждым разом присваивается новое значение переменной a
a -= b // 5
a *= b // 50
a /= b // 5

print("a equals \(a)")
print("b equals \(b)\n")

// Операторы сравнения a == b, a != b, a > b, a < b, a >= b, a <= b

a = 5
b = 10

a == b // false
a != b // true
a > b // false
a < b // true
a >= b // false
a <= b // true

// Операторы замкнутого диапазона (a...b), a < b

// Операторы полузамкнутого диапазона (a..<b)

// Одностронние диапазоны (a...)

// Логические операторы ! - не, && - и, || - или

// ! НЕ

let accessDeniedMessage = "ACCESS DENIED"
let welcomeMessage = "Welcome!"
var allowedEntry = false

if !allowedEntry {
    print(accessDeniedMessage)
} else {
    print(welcomeMessage)
}

// && - И

let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    allowedEntry = true
}

if !allowedEntry {
    print(accessDeniedMessage)
} else {
    print(welcomeMessage)
}

// || - ИЛИ

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    allowedEntry = true
}

if !allowedEntry {
    print(accessDeniedMessage)
} else {
    print(welcomeMessage)
}

// Не рекомендуется совмещать Логические операторы

// Работа со строками

let name = "Tim"
let surname = "Bird"
let fullName: String
let yearOfBirth = 1960
let currentYear = 2023

// Многострочный литерал

print()

var resume = """
    Full name: Tim Cook
    Year of birth: 1960
    Age: 62
    Company: Apple inc
    Post: CEO
    Cite: "You are more powerfull than you think"
    """

print(resume)
print()

// Конкатенация строк

fullName = name + " " + surname
var greeting = "Hello, my name is "

greeting += greeting + fullName

// Интерполяция

resume = """
    Full name: \(fullName)
    Year of birth: \(yearOfBirth)
    Age: \(currentYear - yearOfBirth)
    Company: Apple inc
    Post: CEO
    Cite: "You are more powerfull than you think"
    """

print(resume)


