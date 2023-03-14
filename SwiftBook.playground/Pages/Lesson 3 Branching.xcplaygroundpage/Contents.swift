// Конструкция if

/*
 if condition {
    some code
 }
*/

var someNumber = 10

// Глобальная зона видимости
if someNumber < 4 { // False
    // Локальная зона видимости
    let number = 0
    var someNumber = 5 // можно объявить еще одну переменную в локальной зоне видимости
    print("The condition is true")
}
print(someNumber)
// cntr i - выравнивание кода
// cmd a - выделение всего кода

someNumber = 1

if someNumber < 4 {
    print("The first condition is true")
}

/*
 if else
 
 if conditionOne {
    some code
 } else if conditionTwo {
    some code
 }
*/

someNumber = 10

if someNumber < 4 {
    print("The first condition is true")
} else if someNumber < 8 {
    print("The second condition is true")
}

someNumber = 7

if someNumber < 4 {
    print("The first condition is true")
} else if someNumber < 8 {
    print("The second condition is true")
}

someNumber = 1

if someNumber < 4 {
    print("The first condition is true")
} else if someNumber < 8 {
    print("The second condition is true")
}

/*
 If conditionOne {
    some code
 } else if conditionTwo {
    some code
 } else {
    some code
 }
 */

someNumber = 10

if someNumber < 4 {
    print("The first condition is true")
} else if someNumber < 8 {
    print("The second condition is true")
} else if someNumber < 10 {
    print("The third condition is true")
} else {
    print("Nothing was true")
}

// Тернарный оператор

// condition ? some code : some code
// Если условие истинно ? выполняем код, иначе : этот код

let a = 5
let b = 10
var c = 0

a < 10 ? print("The condition is true") : print("The condition is false") // !!!!!!!!!!!!!!

a < 10
    ? print("The condition is true")
    : print("The condition is false")

if c < 10 {
    c = a - b
} else {
    c = a + b
}

c = c < 10 ? a - b : a + b // нужно выносить c за тернарный оператор со знаком =
// можно вставит сразу в функцию

// Switch statement

/*
 switch значение для сопоставления {
 case значение1:
    инструкция для первого значения
 case значение2,(аналог ||) значение3:
    инструкция для второго и третьего значения
 default:
    инструкция, если совпадений с шаблоном не найдено
 */

var someCharacter: Character = "a"

if someCharacter == "a" {
    print("Is an A")
} else if someCharacter == "b" {
    print("Is a B")
} else if someCharacter == "c" {
    print("Is an C")
} else {
    print("Don't know what is it")
}

someCharacter = "B"

if someCharacter == "a" || someCharacter == "A" {
    print("Is an A")
} else if someCharacter == "b" || someCharacter == "B" {
    print("Is a B")
} else if someCharacter == "c" || someCharacter == "C" {
    print("Is an C")
} else {
    print("Don't know what is it")
}

// Switch раскрывает себя от трех значений

switch someCharacter {
case "a", "A":
    print("Is an A")
case "b", "B":
    print("Is a B")
case "c", "C":
    print("Is a C")
default:
    print("Don't know what is it")
}

// Соответствие диапазону

let approximateCount = 62
let countedThings = "moons orbiting Stars"
var naturalCount = ""

switch approximateCount {
case ..<0:
    print("Error")
case 0:
    naturalCount = "zero"
case 1:
    naturalCount = "one"
case 2..<5:
    naturalCount = "a few"
case 5...11:
    naturalCount = "several"
case 12...99:
    naturalCount = "dozens of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThings)")
