//print("Error handling in Swift")
//
//enum VendingMachineError : Error
//{
//    case invalidSelection
//    case OutOfStock
//    case mechanicalFailure
//    case paymentFailure
//}
//
////throw VendingMachineError.invalidSelection
//
//struct Item
//{
//    var name : String
//    var price : Int
//    var quantity : Int
//}
//
//var inventory : [String: Item] = [
//    "Classic Salted Lays" : Item(name: "Classic Salted Lays", price: 30, quantity: 10),
//    "Appy" : Item(name: "Appy", price: 20, quantity: 5),
//    "Munch" : Item(name: "Munch", price: 10, quantity: 1),
//]
//
//var itemName : String = "Appy"
//var userQuantity : Int = 2
//var amount : Int = 200
//
////print(inventory[itemName] ?? VendingMachineError.invalidSelection)
////
////guard let availableItem = inventory[itemName] else
////{
////    throw VendingMachineError.invalidSelection
////}
////
////if availableItem.quantity < userQuantity
////{
////    throw VendingMachineError.OutOfStock
////}
////if userQuantity*availableItem.price > amount{
////    throw VendingMachineError.paymentFailure
////}
//
//func dispence(from inventory : [String : Item], get quantity : Int, of item : String, for amount : Int) throws -> String
//{
//    
//    var message = "Order under process"
//    
//    defer
//    {
//        print("I AM NOT DUFFER!!!!!!!!!!!")
//    }
//    defer
//    {
//        print("but i am...")
//    }
//    
//    guard let availableItem = inventory[item] else
//    {
//        throw VendingMachineError.invalidSelection
//    }
//
//    if availableItem.quantity < quantity
//    {
//        throw VendingMachineError.OutOfStock
//    }
//    
//    else if quantity*availableItem.price > amount{
//        throw VendingMachineError.paymentFailure
//    }
//    
//    else if Bool.random()
//    {
//        throw VendingMachineError.mechanicalFailure
//    }
//    
//    return "Order completed, collect it."
//}
//
//
//do
//{
//    
//    var order = try dispence(from: inventory, get: 1, of: itemName, for: 2000)
//    print(order)
//} catch VendingMachineError.invalidSelection
//{
//    print("You have Dyslexia")
//}
//catch VendingMachineError.OutOfStock
//{
//    print("Out of Stock, try again later like in 2-3 hrs or something?")
//}
//catch VendingMachineError.paymentFailure
//{
//    print("You broke bitch")
//}
//catch VendingMachineError.mechanicalFailure{
//    print("Bad luck")
//}
//
//if let screenMessage = try? dispence(from: inventory, get: 2, of: "Munch", for: 12389)
//{
//    print(screenMessage)
//}
//else
//{
//    print("Some error was thrown")
//}
//
//let screenMessage2 = try! dispence(from: [:], get: 5, of: "appy", for: 200)
//
//func vent(inventory : [String:Item]) throws
//{
//    print( try dispence(from: inventory, get: 1, of: "appy", for: 100))
//}
//try vent(inventory: inventory)
//
////print(vent())
//
//
//
//



// MARK: BANK ACCOUNT

enum BankError : Error
{
    case insufficientFunds
    case invalidAmount
    case accountLocked
}

struct BankAccount
{
    var balance : Int
    var isLocked : Bool
    mutating func withdraw(_ amount: Int) throws
    {
        
        defer
        {
            print("Thank you for banking with us")
        }
        
        defer
        {
            print("Transaction complete")
        }
        
        if(balance<amount)
        {
            throw BankError.insufficientFunds
        }
        if(isLocked)
        {
            throw BankError.accountLocked
        }
        print("")
    }
}
