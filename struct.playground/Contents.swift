//struct Person
//{
//    var name : String
//    
//    func sayHello()
//    {
//        print("Hello \(name)")
//    }
//    
//}
//let p1 = Person(name: "Kartik")
//print(p1.name)
//p1.sayHello()
//
//let p2 = Person(name: "Kaushik")
//p2.sayHello()
//
//
//struct Shirt
//{
//    var size : String
//    var color : String
//}
//
//
//let s1 = Shirt(size:"M", color: "black")
//struct Direction
//{
//    var direction : String
//    
//    
//}
//struct car
//{
//    var make : String
//    var year : Int
//    var color : String
//    var started : Bool = false
//    
//    func startEngine()
//    {
//        if (started)
//        {
//            print("already started")
//        }
//        else
//        {
//            !started
//            print("Engine is started")
//        }
//    }
//    func drive()
//    {
//        if started==false
//        {
//            print("Please start the engine first")
//        }
//        else
//        {
//            print("car is driving itself")
//        }
//    }
//    func park()
//    {
//        if started==true
//        {
//      fxzy7 1      print("car is parking")
//            !started
//            print("car is parked")
//        }
//        else
//        {
//            print("Car is already parked")
//        }
//    }
//    func steer(direction : Direction)
//    {
//        if direction == "right"
//        {
//            print("turning right")
//        }
//    }
//}
//let checkString = String()
//let checkBool = Bool()
//
//
//
//struct Bank
//{
//    var bankAccount : Int
//    var balance : Double = 0
//}
//
//let b1 = Bank(bankAccount: 23131011068, balance: 100000000000000000000000000000000000000000000000000000000000000000_000000000000000000000000000000000000000000000000000.23)
//
struct Temperature
{
    var celsius : Double
    
    init (celsius:Double)
    {
        self.celsius = celsius
    }
    
    init (fahrenheit:Double)
    {
        celsius = (fahrenheit-32)/1.8
    }
    init (kelvin:Double)
    {
        celsius = (kelvin-273.15)
    }
    
    //    let
//
//    func farenheitToCelsius(farenheit:Double) -> Double
//    {
//       print((fahrenheit-32) * 5/9))
//    }
//    
}
    let temp = Temperature(celsius: 30.0)
    let tempk = Temperature(kelvin: 0.0)
//var farenheit : Double = 98.2
//let temp = fahrenheitToCelsius(farenheit)


print(tempk)
print(temp)
