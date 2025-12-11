import UIKit

class Vehicle // base class
{
    let currentSpeed : Double
    var description : String
    {
        "The vehicle is moving at \(currentSpeed) km/hr"
    }
    init(currentSpeed: Double) {
        self.currentSpeed = currentSpeed
    }
    
    func makeNoise()
    {
        
    }
}
//print(Vehicle().currentSpeed)
//print(Vehicle())
//print(Vehicle)
let aVehicle = Vehicle(currentSpeed: 60)
print(aVehicle.currentSpeed)


//MARK: Inheritance


class Bicycle:Vehicle //single inheritance // sub class of Vehicle and super class for tandemBicycle
{
//    override let currentSpeed : Double
    let hasBasket : Bool = false
    override var description: String
    {
        super.description + " and it is a bicycle"
    }
    
    override func makeNoise() {
        print("Bicycle is making noise.")
    }
}
let aBicycle = Bicycle(currentSpeed: 30)
print(aBicycle.currentSpeed)
aBicycle.makeNoise()
print(aBicycle.description)


class tandemBicycle : Bicycle
{
    // this is multi level inheritance.
}

//class Bike: Vehicle,Bicycle
//{
//
//}

//
//struct MeraDost
//{
//    var name : String
//    var udhari : Int
//    
//    
//}
class MeraDost
{
    var name : String
    var udhari : Int
    init(name: String, udhari: Int) {
        self.name = name
        self.udhari = udhari
    }
    
}


var ajay = MeraDost(name: "Ajay", udhari: 500)
var ajayMyCopy = ajay
ajayMyCopy.udhari += 500
print(ajayMyCopy.udhari)
print(ajay.udhari)

//MARK: Upcast and Downcast


let anotherBicycle: Bicycle = Bicycle(currentSpeed: 80)
let anotherVehicle: Vehicle = anotherBicycle

let num: Int = Int(2.0)
print(num)
let vehicle: Vehicle = Bicycle(currentSpeed: 87.9)
let bicycle: Bicycle = vehicle as! Bicycle

struct Message
{
    var content: String
    var isRead : Bool = false
}
class MessageManager
{
    private var messages: [Message] = []
    private init() { // why?
//        self.messages = messages
    }
    @MainActor static let shared = MessageManager()  // why?
    
    func addMessage(message: Message)
    {
        messages.append(message)
    }
    func markAsRead(at index: Int)
    {
        messages[index].isRead = true
    }
    func checkStatus(at index: Int)
    {
        print(messages[index].isRead)
    }
}
//
let mobileManager = MessageManager.shared
let desktopManager = MessageManager.shared
//
mobileManager.addMessage(message: Message(content: "hello"))
mobileManager.markAsRead(at: 0)
//
desktopManager.checkStatus(at: 0)
//
mobileManager.checkStatus(at: 0)
