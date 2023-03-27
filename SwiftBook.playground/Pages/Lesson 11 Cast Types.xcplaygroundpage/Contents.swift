

class Animal {
    var name = ""
    var description: String {
        "Animal"
    }
}

final class Dog: Animal {
    override var description: String {
        "Dog"
    }
}

final class Cat: Animal {
    override var description: String {
        "Cat"
    }
}

final class Bird: Animal {
    override var description: String {
        "Bird"
    }
}

let animal = Animal()
let dog = Dog()
let cat = Cat()
let bird = Bird()

func getClientPet(_ pet: Animal) -> Animal {
    pet
}

let pet = getClientPet(cat)

pet.description

if pet is Dog {
    print("The animal is a dog")
} else if pet is Cat {
    print("The animal is a cat")
} else if pet is Bird {
    print("The animal is a bird")
} else {
    print("It's an exotic animal")
}

//animal is Animal // true
//animal is Dog // false
//animal is Cat // false
//animal is Bird // false
//
//dog is Animal // true
//dog is Dog // true
//dog is Cat // false
//dog is Bird // false

func getPets() -> [Animal] {
    var pets: [Animal] = []
    
    for _ in 1...Int.random(in: 1...10) {
        let dog = Dog()
        pets.append(dog)
    }
    
    for _ in 1...Int.random(in: 1...10) {
        let cat = Cat()
        pets.append(cat)
    }
    
    for _ in 1...Int.random(in: 1...10) {
        let bird = Bird()
        pets.append(bird)
    }
    
    return pets
}

let pets = getPets()

var dogCount = 0
var catCount = 0
var birdCount = 0

for pet in pets {
    if pet is Dog {
        dogCount += 1
    } else if pet is Cat {
        catCount += 1
    } else if pet is Bird{
        birdCount += 1
    }
}

print("There are \(dogCount) dogs, \(catCount) cats, \(birdCount) birds")

func walk(with dog: Dog) {
    print("Walking \(dog.name)")
}

func cleanLitterBox(for cat: Cat) {
    print("Cleaning the \(cat.name) litter box")
}

func cleanCage(for bird: Bird) {
    print("Removing the \(bird.name) feathers at the bottomm of the cage")
}

// Приведение типов

for pet in pets {
    if let dog = pet as? Dog {
       walk(with: dog)
    } else if let cat = pet as? Cat {
        cleanLitterBox(for: cat)
    } else if let bird = pet as? Bird {
        cleanCage(for: bird)
    }
}

// Any type

let items: [Any] = [1, "Tod", 7.6, dog, cat]

if let firstItem = items.first as? Int {
    print(firstItem + 4)
}

var cards: [Any] = [2, 3, 5, "Queen", "King"]

func getSum(from cards: [Any]) -> Int {
    var total = 0
    
    for card in cards {
        if let cardWithNumber = card as? Int {
            total += cardWithNumber
        } else if card is String {
            total += 10
        }
    }
    
    return total
}

getSum(from: cards)
