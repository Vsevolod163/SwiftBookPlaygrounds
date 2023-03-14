
// Функции

// Название должно быть глаголом
// Функция в идеале должна выполнять одно действие

// func nameOfFunction() {
//      some code
// }

func addingTwoNumbers() {
    let a = 3
    let b = 2
    let c = a + b
    print(c)
}

addingTwoNumbers()
addingTwoNumbers // () -> () - сигнатура функции

let result = addingTwoNumbers
result()

// Функции с возвращаемым значением

/*
 func nameOfFunction() -> Data Type {
    some code
    return some value
 }
 */

func addingTwoNumbersNew() -> Int{
    let a = 3
    let b = 2
    return a + b
}

let secondResult = addingTwoNumbersNew()
print(secondResult)

// Функции с параметрами без аргументов
// Если в функции есть параметры, то у нее другое имя
// У параметров должен быть обязательно определен тип

func addingTwoNumbersSecond(a: Int, b: Int) -> Int {
    a + b
}

addingTwoNumbersSecond(a: 5, b: 7)

// Функции с параметрами и аргументами

func addingTwoNumbersSecond(number a: Int, andNumber b: Int) -> Int {
    a + b
}

addingTwoNumbersSecond(number: 5, andNumber: 9)

// Заменяем аргументы на _

func addingTwoNumbersSecond(_ a: Int, _ b: Int) -> Int {
    a + b
}

addingTwoNumbersSecond(3, 5)

func addingTwoNumbersSecond(_ a: Int, and b: Int) -> Int {
    a + b
}

addingTwoNumbersSecond(10, and: 11)

// ----------------------------------------------------------------

// Вариативные параметры

// Параметр, который может иметь несколько значений или не иметь ни одного
// Если стоит Double... - то функция может принимать сколько угодно значений

func getArithmeticMean(_ numbers: Double...) -> Double { // numbers превращается в массив
    var total = 0.0
    
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

getArithmeticMean(1, 4, 7)

Array(1...100) // Функция создает массив
