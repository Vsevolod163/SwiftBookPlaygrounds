// Типы коллекций

// Массивы
/* Массивы хранят в себе упорядоченные, но при этом не уникальные
значения одного типа*/

// Неизменяемый массив с типом данных String
// Названия не должны содержать тип коллекций!!!!!

let strings = ["a", "b", "c"]

// Неизменяемый массив с типом Character

let characters: [Character] = ["a", "b", "c"]

// Пустой массив с типом Int

var integers: [Int] = []
//var integers = [Int]()

// Присваивание данных массиву

integers = [1, 2, 3]

// Теперь поменяем значения

integers = [4, 5, 6]

// Добавление новых значений к уже существующим

integers += [7, 8]

// Добавление через append

integers.append(9)

// Добавление элемента по индексу

integers.insert(1, at: 0)

// Создание нового массива, путем объеденения двух других массивов

let someIntegers = [12, 17]
var anotherIntegers = integers + someIntegers

// Удаление данных из массива и возвращения его

anotherIntegers.removeLast()

// Сохранение в константе

let lastValueFromArray = anotherIntegers.removeLast()

// Результат после удаления

anotherIntegers

// Удаление первого элемента

let firstValue = anotherIntegers.removeFirst()

// Результат после удаление первого элемента

anotherIntegers

// Удаление значения по индексу

anotherIntegers.remove(at: 1)

// Результат после удаления

anotherIntegers

// Количество элементов массива

anotherIntegers.count

/* Удаление всех элементов массива (лучше использовать этот, потому что
можно прочитать)*/

anotherIntegers.removeAll()

// Обнуление массива путем присваивания ему пустого массива

integers = []

// Замена значения по индексу 2 на новое значение

integers = [10, 20, 40]
integers[2] = 30

// Результат после замены

integers

// Использование логического свойства isEmpty

if !integers.isEmpty {
    print(integers)
}



// ---------------------------------------------------



// Множества
/* Множества хранит в себе неупорядоченные, но при этои уникальные
значения одного типа*/

// Создание пустого множества с типом Character

let charactersSecond: Set<Character> = ["a", "b", "b"]

// Создадим множество с типом String

var stringsTwo: Set = ["a", "a", "a", "b", "c"]

// Добавление нового элемента в множество

stringsTwo.insert("e")

// Проверка на наличие определенного элемента во множестве

stringsTwo.contains("a")

// Сортировка с использованием метода sorted()

let strs = strings.sorted()

// Сортировка в обратном порядке

strs.sorted(by: >)

// Множества предпочтительнее массивов, если это возможно



// ---------------------------------------------------

// Словари

/* Неупорядоченные коллекции, которые хранят в себе пары
"ключ-значения". Ключ и значения должны быть соответственно одного типа.*/

// Словарь с типом [Int: String]. Элементы не упорядочены

let users = [1: "Tim Cook", 2: "Taylor Swift"]

// Создание пустого словарая с типом [String: String]

var carWashQueue: [String: String] = [:]

// Наполнение словаря данными ( Ключи уникальны)

carWashQueue = ["E095BA": "Red Toyota", "X612MT": "White BMW X6"]

// Изменение значения для ключа

carWashQueue["E095BA"] = "Red Camry"

// Изменение значения с сохранением старого значения

carWashQueue.updateValue("Grey BMW X6", forKey: "X612MT")
carWashQueue

// Добавление новой пары ключ-значение

carWashQueue["M577ME"] = "Green Niva"

// Удаление значения по ключу с сохранением значения

//carWashQueue["E095BA"] = nil
carWashQueue.removeValue(forKey: "E095BA")
carWashQueue
carWashQueue.removeAll()


// --------------------------------------------------------------------

// Работа с символами

let string = String(["H", "e", "l", "l", "o"])
print(string)


// --------------------------------------------------------------------



// For-in циклы

/*
for counter in lower...upper {
    some code
}
*/

var total = 0

for number in 1...5 where number % 2 == 0 {
    total += number
}

print(total)

// Итерация по массиву

// Перенос строки

let fruits = [
    "apple",
    "banana",
    "pineapple",
    "apple",
    "pear",
    "apple",
    "plum",
    "apricot",
    "apple"
]

var appleCount = 0

for fruit in fruits {
    if fruit == "apple" {
        appleCount += 1
    }
}

print("The number of apples is \(appleCount) pieces")


// Итерация по словарю

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animal, legsCount) in numberOfLegs {
    print("\(animal) have \(legsCount) legs")
}

// Итерация по тексту

let greeting = "Hello!"

for char in greeting {
    print(char)
}

print()

// -------------------------------------------------------------

// Циклы while

/*
 while condition {
    some code
 }
 */

var counter = 5

while counter > 0 {
    print(counter)
    counter -= 1
}

// repeat отличается тем, что код в любом случае выполнится (самый
// редкий)

/*
 repeat {
    some code
 } while condition
 */

print()

repeat {
    print(counter)
    counter -= 1
} while counter > 0
