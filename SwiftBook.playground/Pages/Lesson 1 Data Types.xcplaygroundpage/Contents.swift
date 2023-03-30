

// shift, command,enter запускает код

/*:
 # Заголовок
 ## Подзаголовок
 ### Еще один подзаголовок
 **жирный текст**, *курсив*
 > Цитата
 */

// Чтобы запустить этот код, нужно нажать Editor наверху и выбрать пункт show rendered markup
    // : - переводит в MarkUp


print("Hello")

var teamSport: String = "Футбол"

print("\(teamSport) - спорт\n") // Лучше ставить в конце строки /n для пропука строки

teamSport = "Американский футбол"

print("\(teamSport) - спорт\n")

// С константами компилятор работает быстрее, чем с переменными
// Свойства всегда должна быть константой

// Каретка - перенос каретки (новая строка)

//teamSport = 10

/*
 String - текстовая строка
 Int - целое число
 Float - 32 - битное число с плавающей точкой
 Double - 64 - битное число с плавающей точкой для более длинных переменных
 Bool - логическое значение "true" или "false"
 */

var userName = ""
print(userName)

let age = 62
userName = "Tim Cook"
print("My name is \(userName), I'm \(age) old\n")


let someNumber = 10.1

var someFloat: Float = 0

let bollian = true

// Приведение типов

let castIntToDouble = Double(age) + someNumber

let castDoubleToInt = age + Int(someNumber)

let castIntToString = String(age)

let user = "1"
let castStringToInt = age + (Int(userName) ?? 0) // ?? - иначе
print(castStringToInt)


// Type aliaces

typealias Centigrade = Int

let temperature: Centigrade = 25
let anotherTemp = 20

let difference = temperature - anotherTemp

typealias CompletionHandler = (Int, String) -> String

func someFunc(closure: CompletionHandler) {
    
}
