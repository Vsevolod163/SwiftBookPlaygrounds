//: Вложенные функции - функции внутри функции

let items = [0, 1, 2, 3, 4, 5, 6]

func recursiveBinarySearch(by items: [Int], with target: Int) -> Int? {
    func recursiveBinarySearch(by items: [Int], with target: Int, firstIndex: Int, lastIndex: Int) -> Int? {
        if firstIndex > lastIndex {
            return nil
        }
        
        // Определяем индекс из середины коллекции
        let middleIndex = (firstIndex + lastIndex) / 2
        let item = items[middleIndex]
        
        if item == target {
            // Элемент найден
            return middleIndex
        } else if target < item {
            // Поиск по левой половине коллекции
            return recursiveBinarySearch(
                by: items,
                with: target,
                firstIndex: 0,
                lastIndex: middleIndex - 1
            )
        } else {
            // Поиск по правой половине коллекции
            return recursiveBinarySearch(
                by: items,
                with: target,
                firstIndex: middleIndex + 1,
                lastIndex: lastIndex
            )
        }
    }

    // Чтобы поставить курсор сразу на несколько строк нужно зажать shift ctrl и нажимать на место
    
    return recursiveBinarySearch(
        by: items,
        with: target,
        firstIndex: 0,
        lastIndex: items.count - 1
    )
}

recursiveBinarySearch(by: items, with: 1)


//: -------------------------------------------------------------------

//: Замыкания

//: Отбираем числа меньше заданного значения

let numbers = [5, 8, 20, 14, 1, 4, 3, 7]

func filterLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterLessThanValue(value: 5, numbers: numbers)

//: Отбираем числа больше заданного значения

func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number > value {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterGreaterThanValue(value: 5, numbers: numbers)

//: __Код не должен повторяться !!!!!!!!!!!!__
//:Функция для отбора чисел, относительно заданного значения


func lessThanValue(number: Int, value: Int) -> Bool {
    number < value
}

lessThanValue(number: 5, value: 5)
let closure = lessThanValue // lessThanValue - Сигнатура функции
closure(5, 5)

func filterWithPredicateClosure(value: Int, numbers: [Int], closure: (Int, Int) -> Bool) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if closure(number, value) {
            filteredNumbers.append(number)
        }
    }
    
    return filteredNumbers
}

filterWithPredicateClosure(value: 5, numbers: numbers, closure: closure)


// Отбора чисел меньше указанного значения

filterWithPredicateClosure(value: 5, numbers: numbers, closure: lessThanValue)

// Отбор чисел больше указанного значения

func greaterThanValue(number: Int, value: Int) -> Bool {
    number > value
}

filterWithPredicateClosure(value: 5, numbers: numbers, closure: greaterThanValue)

// Замыкания бывают трех видов:
// Глобальные
// Вложенные функции
// Замыкающие выражения


/* { (параметры) -> тип результата in
 тело замыкающего выражения
 }
 */
 
 filterWithPredicateClosure(
    value: 5,
    numbers: numbers,
    closure: { (number: Int, value: Int) -> Bool in
        return number < value
    }
)

filterWithPredicateClosure(
   value: 5,
   numbers: numbers,
   closure: { $0 < $1 }
)

filterWithPredicateClosure(value: 5, numbers: numbers) { number, value in
    number < value
}



filterWithPredicateClosure(value: 5, numbers: numbers, closure: <)

// Свойства с типом замыкающим выражением

let completion: (Int, Int) -> Int = {
    $0 + $1
}


completion(5, 9)

// Захват значений

var numberOne = 3
var numberTwo = 5

let closureTwo: () -> Int = { [numberOne, numberTwo] in
    numberOne + numberTwo
}

closureTwo()

numberOne = 7
numberTwo = 3

closureTwo()

