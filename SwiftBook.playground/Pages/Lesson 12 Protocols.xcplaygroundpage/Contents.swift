
// Протоколы

let string = "Hello, world!"

print(string)

let number = 10
print(number)

let boolean = true
print(boolean)


// CustomStringConvertible

final class Shoes {
    
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}

// MARK: - CustomStringConvertible
extension Shoes: CustomStringConvertible {
    var description: String {
        "Shoes(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
}

let shoes = Shoes(color: "Brown", size: 41, hasLaces: true)
print(shoes)


// Equatable (сравнение) подходит под == !=


struct Employee {
    let firstName: String
    let lastName: String
    let jobTitle: String
    let phoneNumber: String
}

// MARK: - Equatable
extension Employee: Equatable {
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        lhs.lastName == rhs.lastName && lhs.phoneNumber == rhs.phoneNumber
    }
}

let employees = [
    Employee(
        firstName: "Alexey",
        lastName: "Efimov",
        jobTitle: "Teacher",
        phoneNumber: "8-999-888-77-55"
    ),
    Employee(
        firstName: "Ivan",
        lastName: "Akulov",
        jobTitle: "Head",
        phoneNumber: "8-999-787-54-33"
    ),
    Employee(
        firstName: "Ivan",
        lastName: "Danilin",
        jobTitle: "Teacher",
        phoneNumber: "8-999-555-44-11"
    )
]

let efimov = Employee(
    firstName: "Alexey",
    lastName: "Efimov",
    jobTitle: "",
    phoneNumber: "8-999-888-77-55"
)

for employee in employees {
    if employee == efimov {
        print("The employee \(efimov.lastName) is registered in the company")
    }
}


// Comparable (сортировка списка) подходит под > <

// MARK: - Comparable
extension Employee: Comparable {
    static func <(lhs: Employee, rhs: Employee) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

let sortedEmployees = employees.sorted(by: <)
sortedEmployees.forEach { employee in
    print(employee.lastName)
}


// Создание собственного протокола

// Сериализация

protocol JSONSerializable {
    func toJSON() -> [String: Any]
}

extension JSONSerializable {
    func doSomething() {
        print("do something")
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
}

// MARK: - JSONSerializable
extension Person: JSONSerializable {
    func toJSON() -> [String : Any] {
        ["name": name, "surname": surname, "age": age]
    }
}

let person = Person(name: "Tim", surname: "Cook", age: 62)
let json = person.toJSON()

print(json)
