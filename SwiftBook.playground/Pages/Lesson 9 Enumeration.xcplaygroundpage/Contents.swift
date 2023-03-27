
// Перечисления

var someDay = "Monday"
func setupAlarm(for day: String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8 am")
    } else {
        print("Today \(day). Alarm not set")
    }
}

setupAlarm(for: someDay)
someDay = "tuesday"
setupAlarm(for: someDay)

// Перечисления позволяют избежать ошибок

/*
 enum EnumerationName {
    case enumeration
 }
 */

enum Weekday { // название единственное число
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

// Использование инструкции Switch

var weekday: Weekday = .monday

func setupAlarm(for weekday: Weekday) {
    switch weekday {
    case .monday, .tuesday:
        print("Set alarm to 8 am")
    case .wednesday:
        print("Set alarm to 8:30 am")
    case .thursday:
        print("Set alarm to 7:30 am")
    case .friday:
        print("Yay! TGIF!")
    default:
        print("Weekend. Alarm not set")
    }
}

setupAlarm(for: weekday)
weekday = .sunday
setupAlarm(for: weekday)


// Исходные значения


enum Country: String {
    case usa = "USA"
    case russia = "Russia"
    case china
}

var country: Country = .usa
print("case title: \(country)")
print("case value: \(country.rawValue)")

country = .china
print("case title: \(country)")
print("case value: \(country.rawValue)")


enum Planet: Int {
    case mercury = -1
    case venus
    case earth = 7
    case mars
    case jupiter
    case saturn = 3
    case uranus
    case neptune
}

let planet: Planet = .jupiter
print("\(planet) is the \(planet.rawValue) planet from the sun")

// Инициализация

let possiblePlanet = Planet(rawValue: 0)

// Связанные значения (ассоциированные параметры)

enum WeekdayV2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

let workday: WeekdayV2 = .workday(message: "Set alarm to", time: 8)

func setAlarm(for weekday: WeekdayV2) {
    switch weekday {
    case let .workday(message, time):
        print("\(message) \(time) am")
    case let .weekend(message):
        print(message)
    }
}

setAlarm(for: workday)
