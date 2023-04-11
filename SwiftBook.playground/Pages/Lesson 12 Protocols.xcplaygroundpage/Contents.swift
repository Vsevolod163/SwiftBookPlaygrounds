
// Протоколы

let string = "Hello, world!"

print(string)

let number = 10
print(number)

let boolean = true
print(boolean)


// CustomStringConvertible

class Shoes {
    
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
