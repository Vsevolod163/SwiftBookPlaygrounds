
// Кортежи

/*
 Example
 (valueOne, ValueTwo, ValueThree, ...)
*/

class Weather {
    var currentWeather: (Int, String) // тип кортежа
    
    init(currentWeather: (Int, String)) {
        self.currentWeather = currentWeather
    }
}

let weather = Weather(currentWeather: (5, "Sunny"))
weather.currentWeather // (.0 5, .1 "Sunny") перед элементом стоят индексы, но нельзая перебрать кортеж в цикле

let mac = (5, "fdgsg")

let (number, text) = mac

number
// Получение доступа к элементам

weather.currentWeather.0 = 24
weather.currentWeather.1 = "Rainy"

weather.currentWeather

let (temperature, atmos) = weather.currentWeather
temperature
atmos


// Именование элементов кортежа

let currentWeather = (temp: 21, atmos: "Fog", windSpeed: 7)
currentWeather.windSpeed


// Массовое присвоение значений (так никто не пишет!)

var numberOne = 1
var numberTwo = 2
var numberThree = 3

(numberOne, numberTwo, numberThree) = (4, 5, 6)


// В переборе словаря использовали кортеж

let cityTemp = [
    "Moscow": Int.random(in: -10...8),
    "St. Petersburg": Int.random(in: -10...8),
    "Ufa": Int.random(in: -10...8)
]

for (city, temp) in cityTemp {
    print("Temperature in \(city) \(temp) degrees")
}


func getTemp(in city: String) -> (city: String, temp: Int) {
    let temp = Int.random(in: -10...8)
    return (city, temp)
}

let (city, temp) = getTemp(in: "Ufa")

print("Temperature in \(city) \(temp) degrees")

let tempInCity = getTemp(in: "Moscow")

print("Temperature in \(tempInCity.city) \(tempInCity.temp) degrees")



// Опционалы

struct Person {
    let name: String
    var surname: String?  // Можно создать экземпляр как с surname, так и без
    var dogs: [Dog] = []
}

// Если не инициализировать свойство, то оно по умолчанию будет принимать nil
// В структурах не нужно отдельно объявлять свойства

struct Dog {
    let name: String
    let age: Int
}



// Принудительное извлечение (опасная, не используется на практике!!!)

/*
 let dog = Dog(name: dogName!, age: dogAge!)
 dog.age
*/


// Использование значений по умолчанию
var dogName: String? = "Rex"
var dogAge: Int?


let dog: Dog? = Dog(name: dogName ?? "", age: dogAge ?? 0)

dog?.age
dog?.name

// Опциональная привязка

dogName = "Rex"
dogAge

var person = Person(name: "Tim")


// Если получится извлечь переменную, то мы передаем ее в константу
if let dog = dog {
    person.dogs.append(dog)
}

// С версии 5.7 можно писать так
if let dog {
    person.dogs.append(dog)
}

var test: [Int] = []
var testTwo = 5

if let dogAge {
    test.append(dogAge)
    testTwo += dogAge
}
dogAge

// Guard

// Все элементы интерфейса опциональные

struct User {
    var login: String?
    var password: String?
    var email: String?
    
    // guard не имеет локальной зоны видимости. Должен быть в конце обязательно return

    func submin() {
        guard let login else {
            print("login is empty")
            return
        }
        
        guard let password else {
            print("password is empty")
            return
        }
        
        guard let email else {
            print("email is empty")
            return
        }
        
        registerUser(with: login, password, and: email)
    }
    
    private func registerUser(with login: String, _ password: String, and email: String) {
        
    }
}


// Неявное извлечение опционалов

struct UserTest{
    let name: String
    let surname: String
    let phone: String
    let email: String
}

class UserProfileViewModel {
    var userNameLabel = ""
    var userSurnameLabel = ""
    var userPhoneLabel = ""
    var userEmailLabel = ""
    
    var user: UserTest! // ! - это опциональное свойство обязано иметь значение

    
    func setupUI() {
        userNameLabel = user.name
    }
}


let user = UserTest(
    name: "Tim",
    surname: "Cook",
    phone: "8888",
    email: "timcook@apple.com"
)

let userProfileVM = UserProfileViewModel()
userProfileVM.user = user
userProfileVM.setupUI()
userProfileVM.userNameLabel


// Опциональная последовательность

class PersonTest {
    var id: String?
    var residence: Residence?
}

class Residence {
    var address: Address?
}

class Address {
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

var personTest: PersonTest?

// Пирамида погибели

if let residence = personTest?.residence {
    if let address = residence.address {
        if let apartmentNumber = address.apartmentNumber {
            print("The apartment number: \(apartmentNumber)")
        }
    }
}

// Пример правильный

if let apartmentNumber = personTest?.residence?.address?.apartmentNumber {
    print("The apartment number: \(apartmentNumber)")
}
