
final class DataStore {
    static let shared = DataStore()
    
    var names = [
        "John",
        "Alex",
        "Susan",
        "Lina",
        "Jack",
        "Ted",
        "Molly",
        "Niki",
        "Ben",
        "Robert"
    ]
    let surnames = [
        "Black",
        "Jankin",
        "Smith",
        "Williams",
        "Butler",
        "Dow",
        "Robertson",
        "Murphy",
        "White",
        "Forest"
    ]
    let phones = [
        "3252315",
        "8384411",
        "94399251",
        "21235136",
        "84369921",
        "894929292",
        "12532621",
        "9496223",
        "125325235",
        "9436231"
    ]
    let emails = [
        "hello@gmail.com",
        "welcome@icloud.com",
        "volleyball@gmail.com",
        "house@mail.com",
        "music@icloud.com",
        "basketball@yandex.com",
        "track@gmail.com",
        "mango@icloud.com",
        "apple@gmail.com",
        "radio@mail.com"
    ]
    
    private init() {}
}

final class PersonManager {
    static let shared = PersonManager()
    
    private let dataStore = DataStore.shared
    
    private init() {}
    
    func add(name: String) {
        if !dataStore.names.contains(name) {
            dataStore.names.append(name)
        }
    }
    
    func getNames() {
        dataStore.names.forEach { name in
            print(name)
        }
    }
}

let personalManagerOne = PersonManager.shared
personalManagerOne.add(name: "Rick")
personalManagerOne.getNames()

let personalManagerTwo = PersonManager.shared
personalManagerTwo.getNames()

personalManagerOne === personalManagerTwo
