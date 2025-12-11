import UIKit
////
////struct Size
////{
////    var width : Double
////    var height : Double
////    
////    func area()->Double // this ensures that it will not return void in any how
////    {
////        width * height
////    }
////}
////var someSize = Size(width: 10, height: 20)
////let area = someSize.area()
////print("area = \(area)")
////
//struct Odometer
//{
//    var count : Int = 0
//    mutating func increment(by amount : Int)
//    {
////        count += 1
//        count += amount
//    }
//    mutating func reset()
//    {
//        count = 0
//    }
//}
//
//var odometer = Odometer()
//
//var a = 0
//
//while a<10
//{
//    odometer.increment(by:10)
//    a+=1
//}
//
//print(odometer)
//odometer.reset()
//print(odometer)
//
//
//struct Temperature
//{
//    var celsius : Double
//    var fahrenheit : Double{
//        get{
//            (celsius * 1.8) + 32
//        }
//        set{
//            celsius + 273.15
//        }
//    }
//}
////    var kelvin : Double
////
////    init (celsius:Double)
////    {
////        self.celsius = celsius
////        fahrenheit = (celsius * 1.8) + 32
////        kelvin = celsius + 273.15
////    }
////
////    init (fahrenheit:Double)
////    {
////        self.fahrenheit = fahrenheit
////        celsius = (fahrenheit-32)/1.8
////        kelvin =  celsius + 273.15
////    }
////    init (kelvin:Double)
////    {
////        self.kelvin = kelvin
////        celsius = (kelvin-273.15)
////        fahrenheit = (celsius * 1.8) + 32
////
////    }
////let currentTemperature = Temperature(celsius: 30, fahrenheit: 30, kelvin
////var currentTemperature = Temperature(celsius: 30.15)
////var currentTemperatureInK = Temperature(kelvin: 30.15)
////var currentTemperatureInF = Temperature(fahrenheit: 30.15)
////print(currentTemperature.fahrenheit)
////print(currentTemperatureInF.kelvin)
////print(currentTemperatureInK.celsius)
//
//struct Point
//{
//    var x = 0.0
//    var y = 0.0
//}
//
//struct Size
//{
//    var width = 0.0
//    var height = 0.0
//}
//
//struct Rectangle
//{
//    var origin = Point()
//    var size  = Size()
//    var center : Point {
//        get
//        {
//            let centerX  = origin.x + (size.width/2)
//            let centerY = origin.y + (size.height/2)
//            return Point(x: centerX, y: centerY)
//        }
//        set
//        {
//            origin.x = newValue.x - (size.width/2)
//            origin.y = newValue.y - (size.height/2)
//        }
//    
//    }
//    
//}
//var square = Rectangle(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10,height: 10) )
//print(square.center)
//
//
//let initialSquareCenter = square.center
//square.center = Point(x: 15.0, y: 15.0)
//print(square.origin)
struct StepCounter
{
    static let totalSteps = 0
    let name : String
    
    
    
    
    
    
//    var totalSteps : Int = 0 {
//        willSet
//        {
//            print("Total step is changed to \(newValue)")
//        }
//        didSet
//        {
//            print("from \(oldValue)")
//        }
//    }
    
    
}
let myStepCounter = StepCounter(name: "Kartik")
//myStepCounter.totalSteps = 40
//myStepCounter.totalSteps = 100
StepCounter.totalSteps
