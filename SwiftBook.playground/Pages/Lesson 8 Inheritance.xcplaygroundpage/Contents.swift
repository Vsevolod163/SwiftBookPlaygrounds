// Наследование

class Person {
    let name: String
    var age: Int
    
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}

// Option для создания экземпляра со скрытыми параметрами
let person = Person(name: "Tim Cook", age: 62)

person.walk()
person.sleep()
person.eat()

// Person - супер класс (родительский класс)
// Child - сабкласс (дочерний)

class Child: Person {
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age <= 5 {
            print("Me too early to educate")
        } else {
            print("Me too late to educate")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 4)
littleBoy.walk()
littleBoy.eat()
littleBoy.sleep()
littleBoy.nursing()
littleBoy.parenting()

// final - конечный класс, от которого нельзя унаследовать, уменьшает нагрузку на компелятор

final class SchoolChild: Child {
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

let schoolChild = SchoolChild(name: "Sarah", age: 5)
schoolChild.parenting()
schoolChild.nursing()
schoolChild.schooling()

schoolChild.age = 7

schoolChild.parenting()
schoolChild.nursing()
schoolChild.schooling()

// Полиморфизм - концепция ООП, которая позволяет применять различную реализацию одного метода для разных объектов

class Animal {
    func makeSound() {
        print("Unknown sound")
    }
}

// Для вызова родительского класса нужно использовать super

final class Cat: Animal {
    override func makeSound() {
        super.makeSound()
        print("Meow!")
    }
}

final class Dog: Animal {
    override func makeSound() {
        print("Woof!")
    }
}

let animal = Animal()
let cat = Cat()
let dog = Dog()

func makeSound(ofAnimal animal: Animal) {
    animal.makeSound()
}

makeSound(ofAnimal: animal)
makeSound(ofAnimal: cat)
makeSound(ofAnimal: dog)

// ДЛЯ КЛАССОВ ВСЕГДА СТАВИМ FINAL

// Ошибки при создании классов

// - Класс, как контейнер с именем для хранения кода
// - Отсутствие принципов инкапсуляции
// - Классы не должны быть избыточными
// - Нерелевантные классы
// - Название класса должно быть сущностью

// Правила создания классаъ


// Cтруктуры

struct PlayerLocation {
    let player: String
    var x: Int
    var y: Int
    
    func getLocation() {
        print("\(player) is at \(x) and \(y)")
    }
}

var player = PlayerLocation(player: "Player One", x: 10, y: 8)
player.getLocation()
player.x = 7
player.getLocation()

// Сравнение классов и структур

final class MacBook {
    var title: String
    var year: Int
    var color: String
    
    var description: String {
        "\(title) \(year) \(color)"
    }
    
    init(title: String, year: Int, color: String) {
        self.title = title
        self.year = year
        self.color = color
    }
}

let macBookPro = MacBook(title: "MacBook Pro", year: 2022, color: "Silver")
print(macBookPro.description)

let macBookAir = macBookPro
macBookAir.title = "MacBook Air"
macBookAir.color = "Gold"
print(macBookAir.description)


struct IPhone {
    var title: String
    var color: String
    var copacity: Int
    
    var description: String {
        "\(title) \(color) \(copacity)Gb"
    }
}

let IPhoneXR = IPhone(title: "IPhone XR", color: "Coral", copacity: 128)

print(IPhoneXR.description)

var IPhhone14Pro = IPhoneXR

IPhhone14Pro.title = "IPhone 14 Pro"

print(IPhhone14Pro.description)

struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, heigth: Int) {
        self.width *= width
        self.height *= heigth
    }
}

var rectangle = Rectangle(width: 10, height: 5)
rectangle.area
rectangle.scale(width: 2, heigth: 3)
rectangle.area


// Пример полиморфизма

class AnimalSecond {
    var description: String {
        "This is \(type(of: self)). \(type(of: self)) say \(makeSound())"
    }
    
    func makeSound() -> String {
        "Unknown sound"
    }
}

final class CatSecond: AnimalSecond {
    override func makeSound() -> String {
        "Meow"
    }
}

final class Zoo {
    private var animals: [AnimalSecond] = []
    
    func add(animal: AnimalSecond) {
        animals.append(animal)
    }
    
    func showAnimals() {
        animals.forEach { animal in
            print(animal.description)
        }
    }
}

let zoo = Zoo()
let animalSecond = AnimalSecond()

let catSecond = CatSecond()
zoo.add(animal: catSecond)

zoo.showAnimals()

